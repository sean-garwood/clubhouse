class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to root_url, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def show
    @post = Post.find(post_params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
