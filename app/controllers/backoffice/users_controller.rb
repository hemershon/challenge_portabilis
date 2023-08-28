module Backoffice
  class UsersController < BackofficeController
    before_action :set_user, only: [:edit, :update]

    def index 
      @users = User.all

    end
    
    def new
      @user = User.new
    end

    def create
      @user = User.new(params_user)
      if @user.save
        redirect_to backoffice_dashboard_index_path, notice: "Usuário criado com sucesso!" 
      else
        render 'new'
      end
    end

    def update
      if @user.update(params_user)
        redirect_to backoffice_users_path, notice: "Usuário atualizado com sucesso"
      else
        render 'edit'
      end
    end

    def show 
      @user = User.find_by(params[:user_id])
    end

    def destroy
     @user.destroy
    #   redirect_to backoffice_dashboard_index_path, notice: "deletado"
    #  else 
    #   render :index
    #  end
    end


    private

    def set_user
      @user = User.find(params[:id])
    end

    def params_user
      params.require(:user).permit(:name, :email, :adjutancy, :password, :password_confirmation)
    end
  end
end