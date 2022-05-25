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
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(experience_params)
    @experiences = Experience.all
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
  end

  private

  def experience_params
    params.require(:experience).permit(:user_id, :designation, :company_name, :location, :probation_period)
  end
end
