class ProfileSkillsController < ApplicationController
	before_action :set_profile
	def create
		@profile_skill =ProfileSkill.new(profileSkill_params)
		@profile_skill.profile = @profile
	end

	private

	def set_profile
		@profile = Profile.find(params[:profile_id])
	end

	def profileSkill_params
		params.require(:profile_skill).permit(:skill_id)
	end

end
