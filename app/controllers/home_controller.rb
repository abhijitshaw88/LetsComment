class HomeController < ApplicationController
  def index
    @todo_items_all=TodoItem.all
  end
end
