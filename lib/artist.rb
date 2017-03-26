class Artist

attr_reader :name, :songs, :genres

  def initialize(artist_name)
    @name = artist_name
    @songs = []
    @genres = []
  end

  def add_song(new_song)
    self.songs.push(new_song)
    new_song.artist = self
    new_song.genre.artists.push(self)
    self.genres.push(new_song.genre)
  end
end


