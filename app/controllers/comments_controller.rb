class CommentsController < ApplicationController
  def create
  @list = List.find(params[:list_id])
  @comment = @list.comments.create(comment_params)
  redirect_to list_path(@list)
  end

private
  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
