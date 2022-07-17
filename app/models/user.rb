# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :name, :phone_number, :document_number, :email, :password
  validates_uniqueness_of :phone_number, :document_number, :email
  validates :document_number, length: { is: 11 }
  validates :phone_number, length: { is: 14 }
end

