# frozen_string_literal: true

class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
  end

  def create
    # byebug
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
    # byebug
    @friendship = Friendship.first
    # @friendship = Friendship.where(friend_id: current_user.id).first
    @friendship.destroy
    redirect_to root_path
  end
end
