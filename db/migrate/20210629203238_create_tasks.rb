class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :deadline
      t.float :rate
      t.boolean :is_assigned
      t.boolean :is_completed
      t.references :tasker, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
