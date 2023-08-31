# frozen_string_literal: true

class User < ApplicationRecord
  enum role: { user: 'usuário', admin: 'administrador' }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

  validates :role, presence: true

end
