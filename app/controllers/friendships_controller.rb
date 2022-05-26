# frozen_string_literal: true

class FriendshipsController < ApplicationController
  def index
    @friendship = current_user
  end

  def create
    @friendship = Friendship.create(user_id: params[:user_id], friend_id: params[:friend_id])
    render :index
  end

  def show  
    @friendship = Friendship.where(friend_id: current_user.id, isfriend: false)
  end

  def update
    @friendship = Friendship.where(friend_id: current_user.id, isfriend: false)
    @friendship.update(isfriend: true)
    redirect_to root_path
  end

  def destroy
    @friendship = Friendship.first
    @friendship.destroy
    redirect_to root_path
  end
end
