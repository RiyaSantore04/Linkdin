# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    @like = Like.create(likeable_id: params[:likeable_id], likeable_type: params[:likeable_type],
                        user_id: params[:user_id])

    # @like = Like.new(like_params)
    redirect_to root_path if @like.save
  end

  def destroy
    @like = Like.find(params[:id])
    # likeable = @like.likeable
    @like.destroy
    redirect_to root_path
  end

  protected

  def like_params
    params.require(:like).permit(:user_id, :likeable_id, :likeable_type)
  end
end
