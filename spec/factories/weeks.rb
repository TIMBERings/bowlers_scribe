FactoryGirl.define do
  factory :week do
    date 5.weeks.from_now
    number 1
    association :season
  end
end
