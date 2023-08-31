# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit

  def admin?
    current_user && current_user.admin?
  end

  helper_method :admin?

  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # private

  # def user_not_authorized
  #   flash[:alert] = "Você não está autorizado a executar essa ação"
  #   redirect_back(fallback_location: root_path)
  # end
end
