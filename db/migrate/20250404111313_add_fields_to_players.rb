class AddFieldsToPlayers < ActiveRecord::Migration[8.0]
  def change
    add_column :players, :number, :integer
    add_column :players, :age, :integer
    add_column :players, :height, :float
    add_column :players, :weight, :float
    add_column :players, :college, :string
    add_column :players, :salary, :float
  end
end
