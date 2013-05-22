class CommentsController < ApplicationController
  def create
    #debugger
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params[:comment])
    redirect_to @post if @comment.save
  end
end
