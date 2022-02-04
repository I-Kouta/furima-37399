FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    last_name             {"岩淵"}
    first_name            {"昂太"}
    last_name_reading    {"イワブチ"}
    first_name_reading    {"コウタ"}
    barthday_id           {"1999-02-22"}
  end
end