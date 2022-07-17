# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductDescount, type: :model do
  subject(:product_descount) { create(:product_descount, :active, :with_product) }

  describe 'presence validations' do
    it { is_expected.to validate_presence_of(:value) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:product) }
  end
end

