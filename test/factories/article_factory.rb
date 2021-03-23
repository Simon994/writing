# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { 'A manually created factory article' }
    link { 'anexamplelink.link' }
    summary { 'Beans beans beans beans beans beans. Some more beans.' }
  end
end
