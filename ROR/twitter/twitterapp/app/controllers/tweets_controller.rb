class TweetsController < ApplicationController
  before_action :set_tweet, only: [:destroy, :show]
  layout "custom_application"
  
  def index
      @tweets = Tweet.all
      @tweet = Tweet.new
      @user = User.find(current_user.id) 
  end

  def new
    @tweet = Tweet.new 
  end
  def show
    @user = User.find(current_user.id)
    @tweet = Tweet.find(params[:id])
  end

  def create
    @user = User.find(current_user.id)
    @tweet = @user.tweets.create(tweet_params)
    redirect_to tweets_path(@user)
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