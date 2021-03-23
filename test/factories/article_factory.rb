# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { Faker::Lorem.sentence(word_count: 4) }
    link { Faker::Internet.url }
    summary { Faker::Lorem.paragraph_by_chars(number: 100) }
  end
end
