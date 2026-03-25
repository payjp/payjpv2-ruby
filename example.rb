require 'payjpv2'
require 'pp'
require 'securerandom'

# Example usage
api_host = ENV['PAYJP_API_HOST'] || 'https://api.pay.jp'
api_key = ENV['PAYJP_API_KEY'] || ''

if api_key.empty?
  warn "Error: Please set the PAYJP_API_KEY environment variable"
  exit 1
end

# Configure authentication method
PAYJPv2.configure do |config|
  config.host = api_host
  config.access_token = api_key
end

api_instance = PAYJPv2::CustomersApi.new
checkout_sessions_api = PAYJPv2::CheckoutSessionsApi.new
products_api = PAYJPv2::ProductsApi.new
prices_api = PAYJPv2::PricesApi.new

customer_create_request = PAYJPv2::CustomerCreateRequest.new(
  email: 'jennyrosen@example.com',
  metadata: { key1: 'value1', key2: 123, key3: true }
)

# Test idempotency key
idempotency_key = SecureRandom.uuid
puts "Using Idempotency-Key: #{idempotency_key}"

begin
  # 1. Create Customer
  puts "=== 1. Create Customer ==="
  result = api_instance.create_customer(
    customer_create_request,
    idempotency_key: idempotency_key
  )
  customer_id = result.id
  puts "Created customer: #{customer_id}"
  puts "Email: #{result.email}"
  puts "Metadata: #{result.metadata}\n\n"

  # 2. Get Customer
  puts "=== 2. Get Customer ==="
  retrieved = api_instance.get_customer(customer_id)
  puts "Retrieved customer: #{retrieved.id}"
  puts "Email: #{retrieved.email}"
  puts "Description: #{retrieved.description || '(none)'}"
  puts "Metadata: #{retrieved.metadata}\n\n"

  # 3. Update Customer
  puts "=== 3. Update Customer ==="
  update_request = PAYJPv2::CustomerUpdateRequest.new(
    email: 'updated@example.com',
    description: 'Updated description from Ruby SDK',
    metadata: { key1: 'updated_value', key4: 456 }
  )
  updated = api_instance.update_customer(customer_id, update_request)
  puts "Updated customer: #{updated.id}"
  puts "New email: #{updated.email}"
  puts "New description: #{updated.description || '(none)'}"
  puts "Metadata: #{updated.metadata}\n\n"

  # 4. List Customers
  puts "=== 4. List Customers ==="
  customer_list = api_instance.get_all_customers(limit: 3)
  puts "Total customers retrieved: #{customer_list.data.length}"
  customer_list.data.each do |c|
    puts "  - #{c.id} (#{c.email || 'no email'})"
  end
  puts "\n"

  # 5. Delete Customer
  puts "=== 5. Delete Customer ==="
  api_instance.delete_customer(customer_id)
  puts "Deleted customer: #{customer_id}\n\n"

  # 6. Create Product, Price, and Checkout Session
  puts "=== 6. Create Product, Price, and Checkout Session ==="

  # 6a. Create Product
  puts "\n--- 6a. Create Product ---"
  product_request = PAYJPv2::ProductCreateRequest.new(
    name: 'Sample Product',
    description: 'A sample product for checkout session demo',
    active: true
  )

  product_idempotency_key = SecureRandom.uuid
  puts "Using Idempotency-Key: #{product_idempotency_key}"

  product = products_api.create_product(
    product_request,
    idempotency_key: product_idempotency_key
  )
  product_id = product.id
  puts "Created product: #{product_id}"
  puts "Product name: #{product.name}"

  # 6b. Create Price
  puts "\n--- 6b. Create Price ---"
  price_request = PAYJPv2::PriceCreateRequest.new(
    currency: 'jpy',
    product_id: product_id,
    unit_amount: 1000,  # 1000 JPY
    nickname: 'Sample Price - 1000 JPY',
    active: true
  )

  price_idempotency_key = SecureRandom.uuid
  puts "Using Idempotency-Key: #{price_idempotency_key}"

  price = prices_api.create_price(
    price_request,
    idempotency_key: price_idempotency_key
  )
  price_id = price.id
  puts "Created price: #{price_id}"
  puts "Unit amount: #{price.unit_amount} JPY"

  # 6c. Create Checkout Session
  puts "\n--- 6c. Create Checkout Session ---"
  line_items = [
    PAYJPv2::LineItemRequest.new(
      price_id: price_id,  # Use the actual price ID we just created
      quantity: 1
    )
  ]

  checkout_request = PAYJPv2::CheckoutSessionCreateRequest.new(
    mode: 'payment',
    line_items: line_items,
    success_url: 'https://example.com/success',
    cancel_url: 'https://example.com/cancel',
    currency: 'jpy',
    customer_email: 'test@example.com',
    locale: 'ja',
    metadata: { order_id: 'order_123' }
  )

  checkout_idempotency_key = SecureRandom.uuid
  puts "Using Idempotency-Key: #{checkout_idempotency_key}"

  checkout_session = checkout_sessions_api.create_checkout_session(
    checkout_request,
    idempotency_key: checkout_idempotency_key
  )

  puts "Created checkout session: #{checkout_session.id}"
  puts "Session URL: #{checkout_session.url}"
  puts "Status: #{checkout_session.status}"
  puts "Mode: #{checkout_session.mode}"
  puts "Currency: #{checkout_session.currency}\n\n"

  puts "=== All tests passed! ==="

rescue PAYJPv2::ApiError => e
  puts "Exception when calling CustomersApi->create_customer: #{e}"
end
