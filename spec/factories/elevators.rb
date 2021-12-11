FactoryBot.define do
  factory :elevator do
    # columnId {Faker::Number.digit}
    column
    serialNumber {Faker::Barcode.upc_a}
    model {'standard'}
    types {'residential'}
    status {'online'}
    dateCommissioning {Faker::Date.between(from: '2018-01-01', to: '2021-11-10')}
    dateLastInspection {Faker::Date.between(from: '2020-01-01', to: '2021-11-10')}
    certificateOperations {Faker::IDNumber.valid} 
    information {Faker::Lorem.sentence(word_count: 3)}
    notes {Faker::Lorem.paragraph(sentence_count: 2)}
  end
end