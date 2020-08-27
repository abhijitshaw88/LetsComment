class AddReferenceTodoUser < ActiveRecord::Migration[5.2]
  def change
      add_reference :todo_items, :user
  end
end
