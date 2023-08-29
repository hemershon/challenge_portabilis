# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit

  def require_admin
    unless current_user.admin?
      flash[:alert] = 'Você não tem permissão para executar esta ação.'
      redirect_to root_path
    end
  end

  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # private

  # def user_not_authorized
  #   flash[:alert] = "Você não está autorizado a executar essa ação"
  #   redirect_back(fallback_location: root_path)
  # end
end
