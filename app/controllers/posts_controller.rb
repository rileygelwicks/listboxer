class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @list = List.find(@post.list_id)
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end
end
