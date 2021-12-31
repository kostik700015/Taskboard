class AddForeignKeyToTask < ActiveRecord::Migration[5.2]
  def up
    add_foreign_key :tasks, :clients
    remove_foreign_key :tasks, column: :tasker_id
  end

  def down
    remove_foreign_key :tasks, column: :client_id
  end
end
