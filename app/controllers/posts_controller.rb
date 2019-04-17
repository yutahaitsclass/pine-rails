class PostsController < ApplicationController
  # before_action :authenticate
  before_action :authenticate_user
  def index
    @user=current_user
    @posts=@user.posts.all
  end

  def new
    @user=current_user
    @post=@user.posts.new
  end

  def create
    @post=current_user.posts.new(post_params)
    if @post.save
      redirect_to root_url
    else
      render "new"
    end
    # render plain: params.inspect
  end

  def edit  
    #  @post = current_user.posts.find(params[:id])
     render plain: params.inspect
  end

  def destroy
    render plain: params.inspect
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
