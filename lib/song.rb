class Song 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_counter = {}
    @@genres.each do |genre|
      if genre_counter[genre]
        genre_counter[genre] += 1 
      else 
        genre_counter[genre] = 1 
      end
    end
    genre_counter
  end
end