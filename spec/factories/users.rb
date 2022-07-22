# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    phone_number { Faker::PhoneNumber.phone_number }
    document_number { CPF.generate }
    email { Faker::Internet.email }
    password { 'asdf1234' }

    trait :with_purchases do
      before(:create) { |user| create(:purchase, user: user) }
    end
  end
end

