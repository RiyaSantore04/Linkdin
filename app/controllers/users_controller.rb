# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.except(current_user)
    @posts = Post.order('created_at desc').page(params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  # def new
  #   @user = User.new
  #   @user.education.build
  # end

  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     redirect_to @user
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   @user = User.find(params[:id])

  #   if @user.update(user_params)
  #     redirect_to @user
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy

  #   redirect_to root_path, status: :see_other
  # end

  # private
  #   def user_params
  #     params.require(:user).permit(:title, :body)
  #   end
end
