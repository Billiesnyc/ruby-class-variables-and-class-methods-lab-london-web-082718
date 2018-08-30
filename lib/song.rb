class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  
 def initialize(name, artist, genre)
   @name = name 
   @artist = artist
   @genre = genre
   @@count += 1
   @@genres << genre
   @@artists << artist
  end
  
  def self.count 
  @@count 
  end
  
  def self.genres
   genres_cleaned = @@genres.uniq
  end
  
  def self.artists
    artists_cleaned = @@artists.uniq
  end
  
 
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  def self.artist_count 
    artist_hash = { }
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] += 1 
      else artist_hash[artist] = 1
      end
    end
    artist_hash
  end
    
end 