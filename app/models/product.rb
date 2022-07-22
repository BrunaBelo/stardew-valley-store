# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :product_descounts
  has_many :product_photos

  validates_presence_of :name, :description, :total_value
  validates_uniqueness_of :name
end

