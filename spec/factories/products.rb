# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { Faker::Lorem.unique }
    description { Faker::Lorem }
    total_value { 10.0 }
  end
end

