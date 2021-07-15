class AddColumnsLonLatToClientTasker < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :latitude, :float
    add_column :clients, :longitude, :float

    add_column :taskers, :latitude, :float
    add_column :taskers, :longitude, :float
  end
end
