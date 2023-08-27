# frozen_string_literal: true

module Backoffice
  class DashboardController < BackofficeController
    before_action :authenticate_user!, only: [:edit, :update, :destroy]
    
    def index
      @users = User.all
    end

    def show
      @user = current_user
    end
  end
end
