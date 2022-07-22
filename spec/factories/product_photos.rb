# frozen_string_literal: true

FactoryBot.define do
  factory :product_photo do
    url { 'fake/url.com' }
    product { create(:product) }
  end
end

