class RemoveListingSkillFromSkills < ActiveRecord::Migration[5.0]
  def change
    remove_column :skills, :listing_skill, :string
  end
end
