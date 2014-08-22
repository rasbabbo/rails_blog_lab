class CommentsController < ApplicationController
  def index
    post_id = params[:post_id]
    @post = Post.find(post_id)
    @comments = @post.comments
  end

  def create
    post_id = params[:post_id]
    @post = Post.find(post_id)

    new_comment = params.require(:comment).permit(:)
    redirect_to post_comment_path(@postid, @comment)
  end

  def new
    post_id = params[:post_id]
    @post = Post.find(post_id)
    @comments = @post.comments.new
  end

  def edit
  end

  def show
    post_id = params[:post_id]
    @post = Post.find(post_id)
    @comment = @post.comments.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
