# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { create(:user) }

  describe 'presence validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:document_number) }
    it { is_expected.to validate_presence_of(:phone_number) }
  end

  describe 'uniqueness validations' do
    it { is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity }
    it { is_expected.to validate_uniqueness_of(:document_number).ignoring_case_sensitivity }
    it { is_expected.to validate_uniqueness_of(:phone_number).ignoring_case_sensitivity }
  end

  describe 'length validations' do
    it { is_expected.to validate_length_of(:document_number) }
    it { is_expected.to validate_length_of(:phone_number) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:purchases) }
  end
end

