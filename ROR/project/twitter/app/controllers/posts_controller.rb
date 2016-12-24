class PostsController < ApplicationController
  before_action :set_post, only: [:destroy, :show]
  
  def index
      @posts = Post.all
  end

  def new
    @post = Post.new 
  end

  def create
    @posts = Post.all
    @user = User.find(current_user.id)
    @post = @user.posts.create(post_params)
    respond_to do |format|
      format.html {redirect_to users_path(@post)}
      format.js { render :layout => false }
    end
  end
 
  def destroy
    @post.destroy
   respond_to do |format|
      format.html {redirect_to users_path(@post)}
      format.js { render :layout => false }
    end
  end
 
  private

    def set_post
      @post = Post.find(params[:id])
    end
    
    def post_params
      params.require(:post).permit(:post_body)
    end
end