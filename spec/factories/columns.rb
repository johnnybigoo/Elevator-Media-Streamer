FactoryBot.define do
  factory :column do
    # batteryId {Faker::Number.digit}
    batterie
    types {'residential'}
    numberFloorServed {Faker::Number.number(digits: 2)}
    status {'online'}
    information {Faker::Lorem.sentence(word_count: 3)}
    notes {Faker::Lorem.paragraph(sentence_count: 2)}
  end
end