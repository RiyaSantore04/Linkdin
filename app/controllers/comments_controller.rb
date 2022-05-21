# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @comment = Comment.new(commentable_id: params[:commentable_id], commentable_type: params[:commentable_type],
                           user_id: params[:user_id], commenter: params[:commenter])
    if @comment.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    # @comment = Comment.new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(parent_id: params[:parent_id])
  end

  def show
    @comment = Comment.find(params[:id])
  end
end
