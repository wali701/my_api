require 'csv'

# Clear any existing players to avoid duplicates
Player.destroy_all

# Path to your CSV file
csv_file = Rails.root.join('db', 'data', 'nba_player_data.csv')

# Read the CSV file and import data
CSV.foreach(csv_file, headers: true) do |row|
  Player.create!(
    name: row['Name'],
    team: row['Team'],
    number: row['Number'].to_i,   # Converting to integer
    position: row['Position'],
    age: row['Age'].to_i,         # Converting to integer
    height: row['Height'].to_f,   # Converting to float
    weight: row['Weight'].to_f,   # Converting to float
    college: row['College'],
    salary: row['Salary'].to_f    # Converting to float
  )
end
