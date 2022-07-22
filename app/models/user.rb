# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :purchases

  validates_presence_of :name, :phone_number, :document_number, :email, :password
  validates_uniqueness_of :phone_number, :document_number, :email
  validates :document_number, length: { is: 11 }
  validates :phone_number, length: { is: 14 }
end

