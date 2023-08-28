# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe 'enum role' do
    it 'enum role deve ser definida corretamente' do
      admin = Admin.new(role: :full_access, email: 'admin@admin.com', password: '123456')
      expect(admin).to be_valid
      expect(admin.role).to eq('full_access')     
    end

    it 'enum role deve ser definida corretamente como acesso restrito' do
      admin = Admin.new(role: :restricted_access, email: 'admin@admin.com', password: '123456')
      expect(admin).to be_valid
      expect(admin.role).to eq('restricted_access')
    end
  end
end
