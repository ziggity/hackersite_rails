class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to post_comments_path
    else
      render :new
    end
  end


private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
