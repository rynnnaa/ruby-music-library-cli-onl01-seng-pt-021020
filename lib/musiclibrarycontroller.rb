class MusicLibraryController
  
  attr_accessor :path
  
  def initialize(path= "./db/mp3s")
    @path=path
    MusicImporter.new(path).import
  end

  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
    
    input = gets.chomp
    
    if input != "exit"
      call
    end
  end
  
  def list_songs
    Song.all.sort_by(&:name).each.with_index(1) do |song_obj, idx|
      puts "#{idx}. #{song_obj.artist.name} - #{song_obj.name} - #{song_obj.genre.name}"
    end
  end
  
  def list_artists
    Artist.all.sort_by(&:name).each.with_index(1) do |artist_obj, idx|
      puts "#{idx}. #{artist_obj.name}"
    end
  end
  
  def list_genres
    Genre.all.sort_by(&:name).each.with_index(1) do |genre_obj, idx|
      puts "#{idx}. #{genre_obj.name}"
    end
  end
  
  def list_songs_by_artist
    puts "Please enter the name of an artist:"
    input = gets.chomp
    input
    if input == Artist.find_by_name(input)
      artist.
  end
end

  #   case input
  #   when "list songs"
  #     list_songs
  #   when "list artists"
  #     list_artists
  #   when "list genres"
  #     list_genres
  #   when "list artist"
  #     list_songs_by_artist
  #   when "list genre"
  #     list_songs_by_genre
  #   when "play song"
  #     play_song
  #   end
  # end