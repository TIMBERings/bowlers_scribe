FactoryGirl.define do
  factory :team do
    name { Faker::StarWars.specie }
    after(:create) do |f|
      5.times {
        member = FactoryGirl.create :member
        member.teams << f
      }
    end
  end
end
