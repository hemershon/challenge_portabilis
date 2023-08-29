# frozen_string_literal: true

class AddNameAndRoleToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :name, :string
    add_column :admins, :role, :integer
  end
end
