class TweetsController < ApplicationController
  before_action :set_tweet, only: [:destroy,:update,:show]
  layout "custom_application"
  
  def index
      @tweets = Tweet.all
      @user = User.find(current_user.id) 
      @tweet = @user.tweets.build
  end

  def new
    @tweet = Tweet.new
  end

  def show
    @user = User.find(current_user.id)
  end

  def create
    @user = User.find(current_user.id)
    @tweet = @user.tweets.create(tweet_params)
    redirect_to tweets_path
  end

  def edit
    @tweet = Tweet.find_by(params[:id])
  end

  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to @tweet, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet }
      else
        format.html { render :edit }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tweet.destroy 
     respond_to do |format|
      format.html { redirect_to tweets_path, notice: 'tweet successfully Deleted.' }
      format.js { render :layout => false ,notice: 'tweet successfully Deleted.' }
    end
  end
 
  private

    def set_tweet
      @tweet = Tweet.find(params[:id])
    end
    
    def tweet_params
      params.require(:tweet).permit(:body,:image)
    end
end