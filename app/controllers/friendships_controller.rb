# frozen_string_literal: true

class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
  end

  def create
    # byebug
    @friendship = Friendship.create(user_id: params[:user_id], friend_id: params[:friend_id],
                                    requester_id: params[:user_id])
    @friendship1 = Friendship.create(user_id: params[:friend_id], friend_id: params[:user_id],
                                     requester_id: params[:user_id])
    @friendship.save
    @friendship1.save
    render :index
  end

  def show
    @friendship = Friendship.where(friend_id: current_user.id, isfriend: false)
  end

  def update
    @friendship = Friendship.where(user_id: params[:id], friend_id: params[:friend_id], isfriend: false)
    @friendship1 = Friendship.where(user_id: params[:friend_id], friend_id: params[:id], isfriend: false)
    @friendship.update(isfriend: true)
    @friendship1.update(isfriend: true)
    redirect_to root_path
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship1 = Friendship.where(user_id: @friendship.friend_id, friend_id: @friendship.user_id).first
    @friendship.destroy
    @friendship1.destroy
    redirect_to root_path
  end
end
