# frozen_string_literal: true

class Product < ApplicationRecord
  validates_presence_of :name, :description, :total_value
  validates_uniqueness_of :name
end

