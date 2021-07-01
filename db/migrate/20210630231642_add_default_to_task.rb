class AddDefaultToTask < ActiveRecord::Migration[5.2]
  def up
    change_column :tasks, :is_assigned, :boolean, default: false
    change_column :tasks, :is_completed, :boolean, default: false
   end
   
   def down
    change_column :tasks, :is_assigned, :boolean, default: nil
    change_column :tasks, :is_completed, :boolean, default: nil
   end
end
