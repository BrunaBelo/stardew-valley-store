# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  subject(:product) { create(:product) }

  describe 'presence validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:total_value) }
  end

  describe 'uniqueness validations' do
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end

