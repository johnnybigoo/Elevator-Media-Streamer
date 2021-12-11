FactoryBot.define do
  factory :employee do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    title {Faker::Job.position}
    email {Faker::Internet.email}
    user
  end
end