class Song 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    unless @@artists.include?(artist)
      @@artists << artist
    unless @@genre.include?(genre)
      @@genre << genre
    @@count += 1
  end
  
end
    