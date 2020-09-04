class Users::CommentsController < ApplicationController
  def index
    @todo_item=TodoItem.find(params[:todo_item_id])
  end

  def new
    @todo_item=TodoItem.find(params[:todo_item_id])
    @comment = current_user.comments.build
  end

  def create
    @comment = current_user.comments.build(comment_params)
    @todo_item=TodoItem.find(params[:todo_item_id])
    @comment.todo_item_id=@todo_item.id
   # byebug
   # @comment.save!
   
    if @comment.save
      redirect_to root_url
    else
      render 'new'
    end
 end


 private
   def comment_params
     params.require(:comment).permit(:body,:todo_item_id)
   end
end
