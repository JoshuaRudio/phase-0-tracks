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

playlist = db.execute("SELECT * FROM playlist")

# make the playlist table (if it's not there already)
db.execute(start_playlist)

# add a song to the playlist
def add_song(db, title, artist)
	db.execute("INSERT INTO playlist (title, artist) VALUES (?, ?)", [title, artist])
	puts "#{title} by #{artist} was added to your playlist."
end

def view_playlist(tracks)
	tracks.each do |song|
		puts "#{song['title']} by #{song['artist']}"
	end
end

#def search_by_artist(artist)
#	puts "Searching for #{artist} in your playlist"
#	puts ""

#add_song(db, "Devastated", "Joey Bada$$")
#puts db.execute("SELECT * FROM playlist")

#view_playlist(playlist)
