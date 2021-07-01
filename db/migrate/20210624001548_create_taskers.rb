class CreateTaskers < ActiveRecord::Migration[5.2]
  def change
    create_table :taskers do |t|
      t.string :username
      t.float :score
      t.float :balance
      t.text :skills
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
