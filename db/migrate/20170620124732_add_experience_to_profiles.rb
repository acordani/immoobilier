class AddExperienceToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :experience, :string
  end
end
