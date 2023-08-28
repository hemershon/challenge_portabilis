module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        render json: @users
      end
      def create
        @user = User.new(params_user)
        if @user.save
          redirect_to backoffice_dashboard_index_path, notice: "Usuário criado com sucesso!" 
        else
          render 'new'
        end
      end
    end
  end
end
