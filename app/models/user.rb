# frozen_string_literal: true

class User < ApplicationRecord
  enum role: %i[user admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
end
