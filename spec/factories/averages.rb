FactoryGirl.define do
  factory :average do
    average 189.53
    association :season
    association :member
  end
end
