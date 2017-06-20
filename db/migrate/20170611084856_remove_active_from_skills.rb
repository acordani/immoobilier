class RemoveActiveFromSkills < ActiveRecord::Migration[5.0]
  def change
    remove_column :skills, :active, :boolean
  end
end
