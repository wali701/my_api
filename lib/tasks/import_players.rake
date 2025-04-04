namespace :import do
  desc "Import NBA players from CSV"
  task players: :environment do
    require "csv"

    # Correct file path (assuming you placed it in the lib folder)
    file_path = Rails.root.join("lib", "nba_players.csv")

    CSV.foreach(file_path, headers: true) do |row|
      Player.create(
        name: row["name"],
        team: row["team"],
        position: row["position"],
        points_per_game: row["points_per_game"].to_f,
        assists_per_game: row["assists_per_game"].to_f,
        rebounds_per_game: row["rebounds_per_game"].to_f
      )
    end
  end
end
