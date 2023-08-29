# frozen_string_literal: true

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
          render 'index', status: :ok, locals: { users: @users }
        else
          render 'new'
        end
      end
    end
  end
end
