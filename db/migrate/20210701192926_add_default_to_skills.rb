class AddDefaultToSkills < ActiveRecord::Migration[5.2]
  def change
    change_column :taskers, :skills, :string
   end
end
