# frozen_string_literal: true

class ProductPhoto < ApplicationRecord
  belongs_to :product

  validates_presence_of :url
end

