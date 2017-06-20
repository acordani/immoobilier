class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit , :update]
  before_action :authenticate_user!, except: [:show]
  def index
    @profiles = current_user.profiles
  end

  def show
  end

  def new
    # @profile = current_user.profiles.build

    @profile = Profile.new
    @profile.user_id = current_user.id
    @profile_skill = @profile.profile_skills.build



  end

  def create
    
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    
    if @profile.save
      redirect_to @profile, notice:"Saved..."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to @profile, notice:"Updated ..."
    else
      render :edit
    end
  end


  private
  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:city, :active, :title, :description, :experience, :skill_ids => [])
  end


end
