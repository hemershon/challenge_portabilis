# frozen_string_literal: true

module Backoffice
  class DashboardController < BackofficeController
    before_action :authenticate_user!, only: %i[edit update destroy]

    def index
      @users = User.order(:name).page params[:page]

      return unless params[:search].present?

      @users = @users.where('name LIKE ?', "%#{params[:search]}%")
    end

    def show
      @user = current_user
    end
  end
end
