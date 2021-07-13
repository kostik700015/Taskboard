class DeleteColumnsFromTask < ActiveRecord::Migration[5.2]
  def change
    remove_index :tasks, name: "index_tasks_on_client_id"
    remove_index :tasks, name: "index_tasks_on_tasker_id"
  end
end
