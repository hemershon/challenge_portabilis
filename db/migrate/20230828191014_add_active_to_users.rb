# frozen_string_literal: true

class AddActiveToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :active, :boolean
  end
end
