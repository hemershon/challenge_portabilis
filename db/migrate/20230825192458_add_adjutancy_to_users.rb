class AddAdjutancyToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :adjutancy, :string
  end
end
