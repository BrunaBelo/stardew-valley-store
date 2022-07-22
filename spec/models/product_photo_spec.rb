# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductPhoto, type: :model do
  subject(:product_photo) { create(:product_photo) }

  describe 'presence validations' do
    it { is_expected.to validate_presence_of(:url) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:product) }
  end
end

