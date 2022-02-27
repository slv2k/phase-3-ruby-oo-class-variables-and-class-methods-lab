class Song
  attr_accessor :name, :genre, :artist

  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, genre, artist)
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

  def artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist]
      end
    end
    artist_count
  end

end