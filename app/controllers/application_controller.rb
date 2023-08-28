# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit

  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # private

  # def user_not_authorized
  #   flash[:alert] = "Você não está autorizado a executar essa ação"
  #   redirect_back(fallback_location: root_path)
  # end
end
