# Playlist:
# This is a program that can:
  # Add songs to a playlist
  # Display the playlist
  # Search for song by artist
# What the table should look like:
  # 1|Black Hole Sun|Soundgarden
  # 2|Car Radio|Twenty One Pilots
  # 3|Devastated|Joey Bada$$

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("playlist.db")
db.results_as_hash = true

# make the table by using string delimiters
start_playlist = <<-SQL
	CREATE TABLE IF NOT EXISTS playlist(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255),
		artist VARCHAR(255)
	);
SQL

# make the playlist table (if it's not there already)
db.execute(start_playlist)
playlist = db.execute("SELECT * FROM playlist")

# add a song to the playlist
def add_song(db, title, artist)
	db.execute("INSERT INTO playlist (title, artist) VALUES (?, ?)", [title, artist])
	puts "#{title} by #{artist} was added to your playlist."
end

def view_playlist(tracks)
	puts "Playlist:"
	puts "-------------------------------"
	tracks.each do |song|
		puts "#{song['title']} - #{song['artist']}"
	end
	puts "-------------------------------"
end

def search_by_artist(db, artist)
	puts "Searching for #{artist} in your playlist..."
	song = db.execute("SELECT playlist.title FROM playlist WHERE playlist.artist=(?)", [artist])
	puts "============================================"
	song.each do |track|
		puts "Now playing #{track['title']} by #{artist}"
	end
	puts "============================================"
end

def shuffle(playlist)
	song = playlist.sample
	puts "================================================="
	puts "Now playing #{song['title'].capitalize} by #{song['artist']}"
	puts "================================================="
end

#add_song(db, "Black Hole Sun", "Soundgarden")
#add_song(db, "Car Radio", "Twenty One Pilots")
#add_song(db, "Devastated", "Joey Bada$$")
#puts db.execute("SELECT * FROM playlist")

#view_playlist(playlist)

#puts db.execute("SELECT playlist.title FROM playlist WHERE playlist.artist=(?)", ["Soundgarden"])
#search_by_artist(db, "Soundgarden")

# Adding more random songs
#50.times do
#	add_song(db, Faker::Hipster.word, Faker::RockBand.name)
#end

shuffle(playlist)