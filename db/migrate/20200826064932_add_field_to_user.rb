class AddFieldToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fullname, :string
    add_column :users, :contact, :string
    add_column :users, :address, :string
  end
end
