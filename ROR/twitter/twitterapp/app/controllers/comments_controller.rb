class CommentsController < ApplicationController
  layout "custom_application"

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.new(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to tweet_path(@tweet), notice: 'User was successfully comment.' }
      else
        format.html { redirect_to tweet_path(@tweet),  notice: 'comment can not be blank!!.'}
      end
    end
  end

  def update
  end

  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to tweet_path(@tweet), notice: 'tweet successfully Deleted.' }
      format.js { render :layout => false ,notice: 'tweet successfully Deleted.' }
    end

  end
  
  def comment_params
    params.require(:comment).permit(:body)
  end
end
