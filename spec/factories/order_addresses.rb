FactoryBot.define do
  factory :order_address do
    post_code     { '111-2222' }
    prefecture_id { 2 }
    city          { '東京都' }
    city_number   { '渋谷区' }
    building      { '建物名' }
    phone_number  { '08011112222' }
    token         {"tok_abcdefghijk00000000000000000"}
  end
end