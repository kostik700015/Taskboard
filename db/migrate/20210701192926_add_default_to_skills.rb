class AddDefaultToSkills < ActiveRecord::Migration[5.2]
  def up
    change_column :taskers, :skills, :string, array: true, default: []
   end
   
   def down
    change_column :taskers, :skills, :string, array: false, default: nil
   end
end
