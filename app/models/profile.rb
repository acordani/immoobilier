class Profile < ApplicationRecord
  belongs_to :user

  validates :city, presence: true
  validates :title, presence: true
  validates :description, presence: true

end
