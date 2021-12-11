FactoryBot.define do
  factory :intervention do
    customer 
    building 
    report {Faker::Lorem.unique.paragraph}
  end
end