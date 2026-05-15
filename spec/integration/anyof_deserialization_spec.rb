=begin
PaymentMethodResponse のような anyOf module が API client の convert_to_type 経由で
正しくデシリアライズされることを確認するスペック。

過去、 templates/ruby/api_client.mustache の convert_to_type は openapi_one_of だけを
チェックして openapi_any_of を見ていなかったため、 Pydantic の RootModel + Union から
生成された anyOf module に対して build_from_hash を呼んでしまい
``NoMethodError: undefined method 'build_from_hash' for module PAYJPv2::PaymentMethodResponse``
が発生していた。

加えて partial_anyof_module.mustache (および partial_oneof_module.mustache) の
find_and_cast_into_type は data.keys (string, from JSON.parse) を
acceptable_attributes (symbol) と直接比較していたため、常に raise → rescue → nil で
build 自体も機能していなかった。

両者を修正した後の挙動を回帰テストとして固定する。
=end

require 'spec_helper'

describe 'anyOf module deserialization via ApiClient#convert_to_type' do
  let(:api_client) { PAYJPv2::ApiClient.new }

  let(:card_payload) do
    {
      'object' => 'payment_method',
      'id' => 'pm_test_card',
      'livemode' => false,
      'type' => 'card',
      'customer_id' => 'cus_test',
      'detached_at' => nil,
      'metadata' => {},
      'created_at' => '2026-01-01T00:00:00Z',
      'updated_at' => '2026-01-01T00:00:00Z',
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

  let(:paypay_payload) do
    {
      'object' => 'payment_method',
      'id' => 'pm_test_paypay',
      'livemode' => false,
      'type' => 'paypay',
      'customer_id' => 'cus_test',
      'detached_at' => nil,
      'metadata' => {},
      'created_at' => '2026-01-01T00:00:00Z',
      'updated_at' => '2026-01-01T00:00:00Z',
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

  it 'PaymentMethodResponse が anyOf module として生成されていること' do
    expect(PAYJPv2::PaymentMethodResponse).to be_a(Module)
    expect(PAYJPv2::PaymentMethodResponse).to respond_to(:openapi_any_of)
    expect(PAYJPv2::PaymentMethodResponse).to respond_to(:build)
    expect(PAYJPv2::PaymentMethodResponse).not_to respond_to(:build_from_hash)
  end

  it 'card 型のレスポンスを convert_to_type で PaymentMethodCardResponse に解決できること' do
    result = api_client.send(:convert_to_type, card_payload, 'PaymentMethodResponse')
    expect(result).to be_a(PAYJPv2::PaymentMethodCardResponse)
    expect(result.id).to eq('pm_test_card')
    expect(result.type).to eq('card')
    expect(result.card.last4).to eq('4242')
  end

  it 'paypay 型のレスポンスを convert_to_type で PaymentMethodPayPayResponse に解決できること' do
    result = api_client.send(:convert_to_type, paypay_payload, 'PaymentMethodResponse')
    expect(result).to be_a(PAYJPv2::PaymentMethodPayPayResponse)
    expect(result.id).to eq('pm_test_paypay')
    expect(result.type).to eq('paypay')
  end
end
