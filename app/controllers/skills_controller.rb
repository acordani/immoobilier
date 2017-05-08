class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]
  def index
    @skills = current_user.skills
  end

  def show
    
  end

  def new
    @skill = current_user.skills.build
  end

  def create
    @skill = current_user.skills.build(skill_params)
      if @skill.save
        redirect_to @skill, notice: "saved..."
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @skill.update(skill_params)
    redirect_to @skill, notice:"Updated ..."
  else
    render :edit
  end
  end

  private

  def set_skill
    @skill = Skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:listing_skill, :active)
  end
end
