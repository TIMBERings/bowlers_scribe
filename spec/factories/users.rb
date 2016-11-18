FactoryGirl.define do
  factory :user, aliases: [:manager, :captain, :member] do
    sequence(:email) { |n| "user_#{n}_#{rand(10000)}@example.com" }
    password 'Test123!'
    password_confirmation 'Test123!'
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    birth_date { rand(13..95).years.ago }

    trait(:with_usbc_number) do
      usbc_number { generate_usbc_number }
    end
  end
end

def generate_usbc_number
  first = rand(2..4)
  second = rand(8..10)
  number = ''
  first.times { number << rand(0..9).to_s }
  number << '-'
  (second - first).times { number << rand(0..9).to_s }
  number
end
