class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = Hash.new(0) #holy crap, this sets the default key to 0, or whatever you input.
    @@genres.each do |genre|
      genre_count[genre] += 1 #iterates through @@genres, each time a key is found, if it alreadty exists, simple increment, otherwise, new key/value, and increments the default 0.
    end
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each do |artist|
      artist_count[artist] += 1
    end
    artist_count
  end

  def self.count
    @@count
  end

end
