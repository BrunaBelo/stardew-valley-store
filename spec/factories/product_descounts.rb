# frozen_string_literal: true

FactoryBot.define do
  factory :product_descount do
    value { 9.0 }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end

    trait :with_product do
      before(:create) { |descount| descount.product = create(:product) }
    end
  end
end

