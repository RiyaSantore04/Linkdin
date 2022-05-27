# frozen_string_literal: true

class EducationsController < ApplicationController
  def index
    @educations = User.educations.all
  end

  def show
    @education = Education.find(params[:id])
  end

  def new
    @education = Education.new
  end

  def create
    # byebug
    @education = Education.new(education_params)
    # @education.save
  end

  def edit
    @education = current_user.educations.find(params[:id])
  end

  def update
    @education = Education.find(params[:id])
    @education.update(education_params)
    @educations = Education.all
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
  end

  private

  def education_params
    params.require(:education).permit(:user_id, :collage, :course, :field_of_study)
  end
end
