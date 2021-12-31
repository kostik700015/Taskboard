class RemoveTaskerFromTask < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :tasker_id, :integer
    remove_foreign_key :tasks, column: :tasker_id
  end
end
