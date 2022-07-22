# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :user

  validates_presence_of :total_value
end

