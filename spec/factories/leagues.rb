FactoryGirl.define do
  factory :league do
    manager
    name { Faker::Space.nebula }
  end
end
