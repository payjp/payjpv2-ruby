=begin
加盟店から報告された事象の回帰テスト。

  pm_api = PAYJPv2::PaymentMethodsApi.new
  pm_api.detach_payment_method(payment_method_id)
  # => NoMethodError: undefined method 'build_from_hash' for module PAYJPv2::PaymentMethodResponse

がテンプレート修正後は起きないこと、および返り値が想定どおりの
具体クラス (PaymentMethodCardResponse / PaymentMethodPayPayResponse) で
返ってくることを呼び出し経路全体で保証する。

anyof_deserialization_spec.rb は ApiClient#convert_to_type を直接叩いており
バグの根因の単体検証だが、本 spec は加盟店が書いたコード経路そのものを
Typhoeus stub 経由で再現する。
=end

require 'spec_helper'

describe 'PAYJPv2::PaymentMethodsApi#detach_payment_method (regression for anyOf build_from_hash)' do
  let(:payment_method_id) { 'pm_test_card' }

  let(:detached_card_response_body) do
    {
      'object' => 'payment_method',
      'id' => payment_method_id,
      'livemode' => false,
      'type' => 'card',
      'customer_id' => 'cus_test',
      'detached_at' => '2026-05-13T15:00:00Z',
      'metadata' => {},
      'created_at' => '2026-01-01T00:00:00Z',
      'updated_at' => '2026-05-13T15:00:00Z',
      'billing_details' => {
        'name' => 'PAY TARO',
        'phone' => '09012345678',
        'email' => 'test@example.com',
        'address' => {
          'country' => 'JP',
          'zip' => '1000001',
          'state' => 'Tokyo',
          'city' => 'Chiyoda',
          'line1' => '1-1-1',
          'line2' => nil
        }
      },
      'card' => {
        'last4' => '4242',
        'brand' => 'visa',
        'exp_month' => 12,
        'exp_year' => 2030,
        'fingerprint' => 'fp_test',
        'country' => 'JP'
      }
    }
  end

  let(:detached_paypay_response_body) do
    {
      'object' => 'payment_method',
      'id' => 'pm_test_paypay',
      'livemode' => false,
      'type' => 'paypay',
      'customer_id' => 'cus_test',
      'detached_at' => '2026-05-13T15:00:00Z',
      'metadata' => {},
      'created_at' => '2026-01-01T00:00:00Z',
      'updated_at' => '2026-05-13T15:00:00Z',
      'billing_details' => {
        'name' => 'PAY TARO',
        'phone' => '09012345678',
        'email' => 'test@example.com',
        'address' => {
          'country' => 'JP',
          'zip' => '1000001',
          'state' => 'Tokyo',
          'city' => 'Chiyoda',
          'line1' => '1-1-1',
          'line2' => nil
        }
      }
    }
  end

  before do
    PAYJPv2.configure do |c|
      c.host = 'api.pay.jp'
      c.access_token = 'sk_test_dummy'
    end
    Typhoeus::Expectation.clear
  end

  after do
    Typhoeus::Expectation.clear
  end

  it 'card 型の detach レスポンスを PaymentMethodCardResponse で受け取れる' do
    Typhoeus.stub(/payment_methods\/#{payment_method_id}\/detach/).and_return(
      Typhoeus::Response.new(
        code: 200,
        headers: { 'Content-Type' => 'application/json' },
        body: detached_card_response_body.to_json
      )
    )

    pm_api = PAYJPv2::PaymentMethodsApi.new

    expect { pm_api.detach_payment_method(payment_method_id) }.not_to raise_error

    result = pm_api.detach_payment_method(payment_method_id)
    expect(result).to be_a(PAYJPv2::PaymentMethodCardResponse)
    expect(result.id).to eq(payment_method_id)
    expect(result.type).to eq('card')
    expect(result.detached_at).not_to be_nil
    expect(result.card.last4).to eq('4242')
  end

  it 'paypay 型の detach レスポンスを PaymentMethodPayPayResponse で受け取れる' do
    paypay_id = 'pm_test_paypay'
    Typhoeus.stub(/payment_methods\/#{paypay_id}\/detach/).and_return(
      Typhoeus::Response.new(
        code: 200,
        headers: { 'Content-Type' => 'application/json' },
        body: detached_paypay_response_body.to_json
      )
    )

    pm_api = PAYJPv2::PaymentMethodsApi.new

    expect { pm_api.detach_payment_method(paypay_id) }.not_to raise_error

    result = pm_api.detach_payment_method(paypay_id)
    expect(result).to be_a(PAYJPv2::PaymentMethodPayPayResponse)
    expect(result.id).to eq(paypay_id)
    expect(result.type).to eq('paypay')
    expect(result.detached_at).not_to be_nil
  end
end
