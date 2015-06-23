class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new params[:post]
    if @post.save
      redirect_to '/posts'
    else
      render 'new'
    end
  end

  def index
    @posts = Post.order :created_at
    logger.debug @posts.inspect
  end

  def show
    @post = Post.find params[:id]
  end

  def destroy
    @post = Post.find params[:id]
    if @post.destroy
      redirect_to '/posts'
    else
      redirect_to :back
    end
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    if @post.update params[:post]
      redirect_to '/posts'
    else
      render 'edit'
    end
  end
end
