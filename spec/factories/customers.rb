FactoryBot.define do
  factory :customer do
    # userId {create(:user)}
    user
    dateCreation {Faker::Date.between(from: '2018-01-01', to: '2021-10-01')}
    compagnyName {Faker::Company.name}
    # addressId {create(:address)}
    address
    fullName {Faker::Name.name}
    contactPhone {Faker::PhoneNumber.cell_phone}
    email {Faker::Internet.email}
    description {Faker::Lorem.paragraph}
    fullNameTechnicalAuthority {Faker::Name.name}
    technicalAuthorityPhone {Faker::PhoneNumber.cell_phone}
    technicalAuthorityEmail {Faker::Internet.email}
  end
end