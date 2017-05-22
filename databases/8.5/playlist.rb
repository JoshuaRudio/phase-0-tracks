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

# view the entire table of songs
def view_playlist(tracks)
	puts "Playlist:"
	puts "-------------------------------"
	tracks.each do |song|
		puts "#{song['id']} - #{song['title'].capitalize} - #{song['artist']}"
	end
	puts "-------------------------------"
end

# search for songs by a particular artist
def search_by_artist(db, artist)
	puts "Searching for #{artist} in your playlist..."
	song = db.execute("SELECT playlist.id, playlist.title FROM playlist WHERE playlist.artist=(?)", [artist])
	puts "========================================"
	song.each do |track|
		puts "Now playing #{track['title'].capitalize} by #{artist}"
	end
	puts "========================================"
end

# begins playing a random song from the playlist
def shuffle(playlist)
	song = playlist.sample
	puts "========================================"
	puts "Now playing #{song['title'].capitalize} by #{song['artist']}"
	puts "========================================"
end

# completely ridiculous method to update who sings a song
def update_song(db, song_int, new_artist)
	song = db.execute("SELECT playlist.id, playlist.title FROM playlist WHERE playlist.id=(?)", [song])
	db.execute("UPDATE playlist SET artist=(?) WHERE id=(?)", [new_artist, song_int])
	song.each do |track|
		puts "#{track['title']} is now performed by #{track['artist']}"
	end
end

# Driver Code

=begin
add_song(db, "Black Hole Sun", "Soundgarden")
add_song(db, "Car Radio", "Twenty One Pilots")
add_song(db, "Devastated", "Joey Bada$$")
puts db.execute("SELECT * FROM playlist")

view_playlist(playlist)

puts db.execute("SELECT playlist.id, playlist.title FROM playlist WHERE playlist.artist=(?)", ["Soundgarden"])
search_by_artist(db, "Soundgarden")

#Adding more random songs
50.times do
	add_song(db, Faker::Hipster.word, Faker::RockBand.name)
end

shuffle(playlist)
search_by_artist(db, "Led Zeppelin")

view_playlist(playlist)
update_song(db, 50, "Metallica")
view_playlist(playlist)
=end

# UI
puts "Welcome to your playlist!" 

input = nil

until input == "Quit" || input == "quit"
	puts "What would you like to do?"
	puts "1. Add Song to Playlist"
	puts "2. View Playlist"
	puts "3. Search by Artist"
	puts "4. Feeling Lucky?"
	puts "5. Change song artist (Original artist will still receive royalties)"
	puts "Enter corresponding number:"
	input = gets.chomp
	if input == "1"
		puts "What is the title of the song?"
		title = gets.chomp
		puts "Who sings it?"
		artist = gets.chomp
		add_song(db, title, artist)
	elsif input == "2"
		view_playlist(playlist)
	elsif input == "3"
		puts "Enter artist:"
		artist_search = gets.chomp
		search_by_artist(db, artist_search)
	elsif input == "4"
		shuffle(playlist)
	elsif input == "5"
		view_playlist(playlist)
		puts "What's the number of the song to be changed?"
		song_int = gets.chomp
		puts "Who sings this song now?"
		new_artist = gets.chomp
		update_song(db, song_int, new_artist)
	else 
		puts "Obladi Oblada life goes on brah!" unless input == "Quit" || input == "quit"
	end
end

puts "Have a good day!"