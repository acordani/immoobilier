class Profile < ApplicationRecord
	has_attachment :photo
	belongs_to :user
	has_many :profile_skills
	has_many :skills, through: :profile_skills

	validates :city, presence: true
	validates :title, presence: true
	validates :description, presence: true

  

end
