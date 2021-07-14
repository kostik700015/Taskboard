class AddDefaultToClientAndTaskerFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :clients, :score, :float, default: 0.0
    change_column :clients, :balance, :float, default: 0.0
  end
end
