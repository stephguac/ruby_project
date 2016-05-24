class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to :back
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def comment_params
  params.require(:comment).permit(:content, :user_id, :commentable_id, :commentable_type)
  end
end
