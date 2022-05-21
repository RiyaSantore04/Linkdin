# frozen_string_literal: true

class ExperiencesController < ApplicationController
  def index
    @experiences = User.experiences.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)

    # if @experience.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(experience_params)
    @experiences = Experience.all

    #   redirect_to @experience
    # else
    #   render :edit
    # end
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy

    # redirect_to root_path, status: :see_other
  end

  private

  def experience_params
    params.require(:experience).permit(:user_id, :designation, :company_name, :location, :probation_period)
  end
end
