FactoryBot.define do
  factory :address do
    typeAddress {Faker::Address.community}
    status {Faker::Lorem.word}
    entity {Faker::Company.name}
    numberAndStreet {Faker::Address.street_address}
    suiteOrApartment {Faker::Address.building_number}
    city {Faker::Address.city}
    postalCode {Faker::Address.postcode}
    country {Faker::Address.country}
    notes {Faker::Lorem.paragraph}
  end
end