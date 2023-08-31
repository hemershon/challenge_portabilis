# frozen_string_literal: true

module Backoffice
  class UsersController < BackofficeController
    before_action :authorize_admin, only: %i[destroy update_active]
    before_action :set_user, only: %i[show edit update destroy]

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(params_user)
      if @user.save
        redirect_to backoffice_dashboard_index_path, notice: 'Usuário criado com sucesso!'
      else
        render 'new'
      end
    end

    def update
      if @user.update(params_user)
        flash[:notice] = 'Perfil atualizado com sucesso.'
        redirect_to @user, notice: 'Usuário atualizado com sucesso'
      else
        render 'edit'
      end
    end

    def update_active
     @user = User.find(params[:id])
     @user.update(active: !@user.active)

     redirect_to user_path, notice: "usu"
    end

    def show
      @user = User.find_by(params[:user_id])
    end

    def destroy
      if current_user.admin? && @user != current_user
        @user.destroy
        flash[:notice] = 'Usuário excluído com sucesso.'
      else
        flas[:alert] = 'Você não tem permissão para excluir este usuário.'
      end
      redirect_to root_path
    end

    private

    def authorize_admin
      unless current_user.admin?
        flash[:alert] = "Você não tem permissão para realizar esta ação."
        redirect_to root_path
      end
    end

    def set_user
      @user = User.find_by(params[:user_id])
    end

    def params_user
      params.require(:user).permit(:name, :email, :adjutancy, :active, :date, :role, :password, :password_confirmation)
    end
  end
end