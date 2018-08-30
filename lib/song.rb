class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  
 def initialize(name, artist, genre)
   @name = name 
   @artist = artist
   @genre = genre
   @@count =+ 1
   @@genres << @genre
   @@artists << @artist
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
    genre_hash = { }
    @@genres.each do |genre|
      if genre_hash[genre]
        genres_hash[genres] =+ 1 
      else genre_hash[hash]
      end
    end
    genre_hash
  end
    
end 