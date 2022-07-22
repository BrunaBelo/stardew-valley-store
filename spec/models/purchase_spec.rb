require 'rails_helper'

RSpec.describe Purchase, type: :model do
  subject(:purchase) { create(:purchase) }

  describe 'presence validations' do
    it { is_expected.to validate_presence_of(:total_value) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end
end

