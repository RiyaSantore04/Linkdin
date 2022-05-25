# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    @like = Like.create(likeable_id: params[:likeable_id], likeable_type: params[:likeable_type],
                        user_id: params[:user_id])
    redirect_to root_path if @like.save
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to root_path
  end
end
