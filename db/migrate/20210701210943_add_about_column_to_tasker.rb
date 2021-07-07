class AddAboutColumnToTasker < ActiveRecord::Migration[5.2]
  def change
    add_column :taskers, :about, :text
  end
end
