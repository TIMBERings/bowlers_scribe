FactoryGirl.define do
  factory :match do
    association :left_team, factory: :team
    association :right_team, factory: :team
    left_lane 1
    right_lane 2
    left_team_dues 70
    right_team_dues 70
    association :week
  end
end
