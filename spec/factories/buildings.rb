FactoryBot.define do
  factory :building do
    # customerId {Faker::Number.digit}
    # addressId {Faker::Number.digit}
    customer 
    address
    fullNameAdministrator {Faker::Name.name}
    emailAdministrator {Faker::Internet.email}
    phoneNumberAdministrator {Faker::PhoneNumber.cell_phone}
    fullNameTechnicalContact {Faker::Name.name}
    emailTechnicalContact {Faker::Internet.email}
    phoneTechnicalContact {Faker::PhoneNumber.cell_phone}
  end
end