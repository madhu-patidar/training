class CommentsController < ApplicationController
  def create
    @artical = Artical.find(params[:artical_id])
    @comment = @artical.comments.create(comment_params)
    redirect_to artical_path(@artical)
  end

  def destroy
    @artical = Artical.find(params[:artical_id])
    @comment = @artical.comments.find(params[:id])
    @comment.destroy
    redirect_to artical_path(@artical)
  end

  def comment_params
    params.require(:comment).permit(:commenter,:comment)
    
  end
end
