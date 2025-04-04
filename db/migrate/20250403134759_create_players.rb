class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :team
      t.string :position
      t.float :points_per_game
      t.float :assists_per_game
      t.float :rebounds_per_game

      t.timestamps
    end
  end
end
