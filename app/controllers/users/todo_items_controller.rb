class Users::TodoItemsController < ApplicationController

  def index
    @todo_items = current_user.todo_items.all
    @todo_items_all = TodoItem.all
  end

  def new
    @todo_item = current_user.todo_items.build
  end

  def create
    @todo_item = current_user.todo_items.build(todo_item_params)
    @todo_item.save
    redirect_to users_todo_items_url
  end
  def edit
    @todo_item=TodoItem.find(params[:id])
  end

  def update
    @todo_item=TodoItem.find(params[:id])
    @todo_item.update(todo_item_params)
    redirect_to users_todo_items_url
  end
  def destroy
    @todo_item=TodoItem.find(params[:id])
    @todo_item.destroy
    redirect_to users_todo_items_url
  end
  def todo_item_params
    params.require(:todo_item).permit(:body,:item_name,:status)
  end
end
