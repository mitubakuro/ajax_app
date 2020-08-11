class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "desc")
  end

  def create
    @post = Post.create(content: params[:content])
    redirect_to action: :index
  end


end
