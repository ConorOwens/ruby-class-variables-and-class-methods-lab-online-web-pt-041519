class Song 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    if @@artists.include?(artist)
    else
      @@artists << artist
    end
    if @@genres.include?(genre)
    else
      @@genres << genre
    end
    @@count += 1
  end
  
end
    