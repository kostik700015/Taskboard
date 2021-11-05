class RemoveForeignKeyFromTask < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :tasks, column: :client_id
  end
end
