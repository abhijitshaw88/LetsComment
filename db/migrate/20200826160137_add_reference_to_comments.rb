class AddReferenceToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :user
    add_reference :comments, :todo_item
  end
end
