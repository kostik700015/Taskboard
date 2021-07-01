class AddUserToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :client_tasker_id, :integer
    add_column :tasks, :client_tasker_type, :string
  end
end
