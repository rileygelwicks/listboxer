class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @list = List.find(@post.list_id)
  end
end
