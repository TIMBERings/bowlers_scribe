FactoryGirl.define do
  factory :season do
    league
    year { Date.today.year }
    day { rand(0..6) }
    start_date { Date.today + 3.weeks }
    number_of_weeks 30
    roll_off_weeks [10, 20, 29]
    dates_off { [Date.today + 10.weeks] }
    handicap_base 220
    handicap_percent 10
    location { "#{Faker::Company.name} - #{Faker::Address.street_address}\n #{Faker::Address.city}, #{Faker::Address.state}  #{Faker::Address.zip_code}" }
    practice_length 10
    starts_at '7:00pm'
  end
end
