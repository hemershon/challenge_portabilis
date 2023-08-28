module Backoffice
  class AdminsController < BackofficeController
    before_action :set_admin, only: [:edit, :update]

    def index 
      @admins = Admin.all
    end
    
    def new
      @admin = Admin.new
      authorize @admin
    end

    def create
      @admin = Admin.new(params_user)
      if @admin.save
        redirect_to backoffice_dashboard_index_path, notice: "Usuário criado com sucesso!" 
      else
        render 'new'
      end
    end

    def update
      if @admin.update(params_admin)
        redirect_to backoffice_users_path, notice: "Usuário atualizado com sucesso"
      else
        render 'edit'
      end
    end

    def show 
      @admin = Admin.find_by(params[:admin_id])
    end

    def destroy
     @admin.destroy
     authorize @admin 
    #   redirect_to backoffice_dashboard_index_path, notice: "deletado"
    #  else 
    #   render :index
    #  end
    end


    private

    def set_admin
      @admin = Admin.find(params[:id])
    end

    def params_admin
      params.require(:admin).permit(:name, :email, :role, :password, :password_confirmation)
    end
  end
end
