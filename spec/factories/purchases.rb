# frozen_string_literal: true

FactoryBot.define do
  factory :purchase do
    total_value { '9.99' }
    descount { '9.99' }
    status { 'pending' }
    user { create(:user) }
  end
end

