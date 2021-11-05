class RemoveTypeFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :client_tasker_id, :integer
    remove_column :tasks, :client_tasker_type, :string
  end
end
