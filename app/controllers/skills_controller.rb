# frozen_string_literal: true

class SkillsController < ApplicationController
  def index
    @skill = User.skills.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    # byebug
    @skill = Skill.new(skill_params)

    # if @skill.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])

    if @skill.update(skill_params)
      redirect_to @skill
    else
      render :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    # redirect_to root_path, status: :see_other
  end

  private

  def skill_params
    params.require(:skill).permit(:user_id, :skill)
  end
end
