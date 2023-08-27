module Backoffice
  class UsersController < BackofficeController

    def index 
      @users = User.all

    end
    
    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: "Usuário criado com sucesso!" # Corrigi o erro de digitação "sucess" para "sucesso"
      else
        render 'new'
      end
    end


    private

    def user_params
      # params.require(:user).permit(:name, :email, :adjutancy, :password, :password_confirmation)
    end
  end
end
