FactoryBot.define do
  factory :batterie do
    # buildingId {Faker::Number.digit}
    building
    types {'residential'}
    status {'online'}
    # employeeId {Faker::Number.digit}
    employee
    dateCommissioning {Faker::Date.between(from: '2018-01-01', to: '2021-11-10')}
    dateLastInspection {Faker::Date.between(from: '2021-01-01', to: '2021-11-10')}
    certificateOperations {Faker::IDNumber.valid}
    information {Faker::Lorem.sentence(word_count: 3)}
    notes {Faker::Lorem.paragraph(sentence_count: 2)}
  end
end