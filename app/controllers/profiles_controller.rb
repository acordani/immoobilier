class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit , :update]
  before_action :authenticate_user!, except: [:show]
  def index
    @profiles = current_user.profiles
  end

  def show
  end

  def new
    @profile = current_user.profiles.build
  end

  def create
    @profile = current_user.profiles.build(profile_params)
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
    params.require(:profile).permit(:city, :active, :title, :description)
  end


end
