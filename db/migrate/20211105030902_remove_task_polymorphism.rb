class RemoveTaskPolymorphism < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :tasks, column: :tasker_id
  end
end
