FactoryGirl.define do
  factory :game do
    association :match
    scratch_total { rand(60..300) }
    handicap { rand(0..30) }
    total_score { scratch_total + handicap }
    performed_date 2.days.ago
    association :member
    game_number { rand(1..3) }
    game_position { rand(1..5) }
  end
end
