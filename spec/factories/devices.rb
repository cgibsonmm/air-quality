FactoryBot.define do
  factory :device do
    uuid { Faker::Internet.uuid }
  end
end
