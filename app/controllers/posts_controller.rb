# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @post = User.posts.all
    @comment = User.comments.all
    @like = User.likes.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    # byebug
    @post = Post.new(post_params)
    CrudNotificationMailer.create_notification(@post).deliver_now
    if @post.save
       @posts = Post.all
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    # CrudNotificationMailer.update_notification(@post).deliver_now
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    # CrudNotificationMailer.delete_notification(@post).deliver_now

    @post.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :image, :User_id, :likeable_id, :likeable_type)
  end
end
