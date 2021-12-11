FactoryBot.define do
  factory :lead do
    fullNameContact {Faker::Name.name}
    compagnyName {Faker::Company.name}
    email {Faker::Internet.email}
    phoneNumber {Faker::PhoneNumber.cell_phone}
    nameProject {Faker::App.name}
    descriptionProject {Faker::Lorem.paragraph}
    department {Faker::Commerce.department}
    message {Faker::Lorem.paragraph}
    file {Faker::Number.binary}
    date {Faker::Date.between(from: '2018-01-01', to: '2021-10-01')}
  end
end