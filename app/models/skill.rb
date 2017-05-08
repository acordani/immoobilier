class Skill < 

	belongs_to :user

	LISTING_NAME = ["Negociateur", "Photographe", "Home Stager", "Graphiste", "Distributeur"]

	validates :listing_name, presence: true, , inclusion: { in: LISTING_NAME }
	
end
