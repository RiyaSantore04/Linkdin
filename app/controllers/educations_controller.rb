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
    @education = Education.new(education_params)
    # @educations = Education.all
    # if @education.save
    #   redirect_to @user
    # else
    #   render :new
    # end
  end

  def edit
    # @education = Education.where(params[:id])
    @education = current_user.educations.find(params[:id])
  end

  def update
    @education = Education.find(params[:id])
    @education.update(education_params)
    @educations = Education.all
      # redirect_to @education
    # else
    #   render :edit
    # end
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    # redirect_to @user
  end

  private

  def education_params
    params.require(:education).permit(:user_id, :collage, :course, :field_of_study)
  end
end
