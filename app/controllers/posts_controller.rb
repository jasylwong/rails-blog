class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    # render plain: params[:post].inspect
    # render plain: post_params.inspect
    @post = Post.new(post_params)
    @post.save
    puts(params)
    redirect_to @post
  end

  private 
  
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
