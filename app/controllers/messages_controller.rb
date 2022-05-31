class MessagesController < ApplicationController
  

  def index
    @friendship = Friendship.where(user_id: current_user.id, isfriend: true)
    @friendship += Friendship.where(friend_id: current_user.id, isfriend: true)
    @messages = Message.all
  end

  def create
     # byebug
    # friendship = Friendship.where(user_id: current_user.id, isfriend: true)
    @message = Message.new(user_id: params[:user_id], friend_id: params[:friend_id], title: params[:title])
      @message.save
      redirect_to root_path
  end

  def show
    # byebug
    @friendship = Friendship.find(params[:id])
    @friend = Message.where(friend_id:  @friendship.friend.id) 
    # @friendship = current_user
  end
end