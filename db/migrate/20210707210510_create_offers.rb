class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.float :rate
      t.date :deadline
      t.text :message
      t.references :task, foreign_key: true
      t.references :tasker, foreign_key: true

      t.timestamps
    end
  end
end
