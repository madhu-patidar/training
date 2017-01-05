class CommentsController < ApplicationController
  layout "custom_application"

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save 
    redirect_to tweet_path(@tweet)
  end

  def update
  end

  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.find(params[:id])
    @comment.destroy
    redirect_to tweet_path(@tweet)
  end
   def comment_params
      params.require(:comment).permit(:body)
    end
end
