require 'rails_helper'

RSpec.describe Backoffice::AdminsController, type: :controller do
  # Crie um administrador de exemplo que será usado em vários testes
  let(:admin) { FactoryBot.create(:admin) }

  describe 'GET #index' do
    it 'retorna status 200 (OK)' do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it 'renderiza a view index' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #new' do
    it 'retorna status 200 (OK)' do
      get :new
      expect(response).to have_http_status(:ok)
    end

    it 'renderiza a view new' do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do
    it 'cria um novo administrador com parâmetros válidos' do
      expect do
        post :create, params: { admin: FactoryBot.attributes_for(:admin) }
      end.to change(Admin, :count).by(1)

      expect(response).to redirect_to(backoffice_dashboard_index_path)
    end

    it 'não cria um novo administrador com parâmetros inválidos' do
      expect do
        post :create, params: { admin: { name: '', email: 'invalid_email' } }
      end.not_to change(Admin, :count)

      expect(response).to render_template(:new)
    end
  end

  # Você pode continuar com testes semelhantes para as outras ações (update, show, destroy).

  describe 'DELETE #destroy' do
    it 'deleta um administrador existente' do
      admin_to_delete = FactoryBot.create(:admin)
      expect do
        delete :destroy, params: { id: admin_to_delete.id }
      end.to change(Admin, :count).by(-1)

      expect(response).to redirect_to(backoffice_dashboard_index_path)
    end
  end

  # Mais testes para as outras ações aqui...

end
