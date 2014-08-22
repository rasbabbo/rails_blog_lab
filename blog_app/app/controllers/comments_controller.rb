class CommentsController < ApplicationController
  def index
    find_post_id
    @comments = @post.comments
  end

  def create
    find_post_id

    new_comment = params[:comment].permit(:name, :description)
    @comment = @post.comments.create(new_comment)

    redirect_to find_post_id
  end

  def new
    find_post_id
    @comment = @post.comments.new
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

  def find_post_id
    post_id = params[:post_id]
    @post = Post.find(post_id)
  end

end
