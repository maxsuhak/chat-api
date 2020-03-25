FactoryBot.define do
  factory :message do
    conversation
    text { Faker::Lorem.word }
  end
end
