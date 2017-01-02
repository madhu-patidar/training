class TweetsController < ApplicationController
  before_action :set_tweet, only: [:destroy, :show]
  
  def index
      @tweets = Tweet.all
      @users = User.all
  end

  def new
    @tweet = Tweet.new 
  end

  def create
    @user = User.find(current_user.id)
    @tweet = @user.tweets.create(tweet_params)
    redirect_to users_path(@user)
  end
  def edit
    @tweet = Tweet.find(params[:id])
  end
 
  def destroy
    @tweet.destroy
   redirect_to users_path
  end
 
  private

    def set_tweet
      @tweet = Tweet.find(params[:id])
    end
    
    def tweet_params
      params.require(:tweet).permit(:body)
    end
end