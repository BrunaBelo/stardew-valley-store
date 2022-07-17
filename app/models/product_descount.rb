# frozen_string_literal: true

class ProductDescount < ApplicationRecord
  belongs_to :product

  validates_presence_of :value
end

