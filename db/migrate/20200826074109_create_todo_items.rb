class CreateTodoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_items do |t|
      t.text :item_name
      t.string :status
      t.text :body
      t.timestamps
    end
  end
end
