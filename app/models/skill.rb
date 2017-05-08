class Skill < ApplicationRecord

	belongs_to :user

	LISTING_SKILL = ["Negociateur", "Photographe", "Home Stager", "Graphiste", "Distributeur"]

	validates :listing_skill, presence: true, inclusion: { in: LISTING_SKILL }
	
end
