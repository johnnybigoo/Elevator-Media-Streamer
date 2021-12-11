FactoryBot.define do
  factory :quote do
    id {Faker::Number.digit}
    type_building {"residential"}
    numApartment {Faker::Number.between(from: 10, to: 500)}
    numFloor {Faker::Number.between(from: 1, to: 80)}
    numElevator {Faker::Number.between(from: 1, to: 30)}
    compagnyName {Faker::Company.name}
    numOccupant {Faker::Number.between(from: 1, to: 80)}
    email {Faker::Internet.email}
    created_at {Faker::Date.between(from: '2018-01-01', to: '2021-10-01')}
  end
end

