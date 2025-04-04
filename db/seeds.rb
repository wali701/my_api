# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Player.create(name: 'LeBron James', team: 'Lakers', position: 'Forward', points_per_game: 25.0, assists_per_game: 7.8, rebounds_per_game: 8.1)
Player.create(name: 'Stephen Curry', team: 'Warriors', position: 'Guard', points_per_game: 30.0, assists_per_game: 6.0, rebounds_per_game: 5.5)
Player.create(name: 'Kevin Durant', team: 'Suns', position: 'Forward', points_per_game: 29.0, assists_per_game: 5.0, rebounds_per_game: 7.5)
