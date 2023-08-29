# frozen_string_literal: true

class Admin < ApplicationRecord
  enum role: %i[full_access restricted_access]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def role_br
    if role == 'full_access'
      'Acesso completo'
    else
      'Acesso Restrito'
    end
  end
end
