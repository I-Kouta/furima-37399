FactoryBot.define do
  factory :item do
    title              {Faker::Lorem.sentence}
    content            {Faker::Lorem.sentence}
    genre_id           {}
    condition_id       {}
    cost_id            {}
    prefecture_id      {}
    shipping_date_id   {}
    price              {}
    user
  end
end
