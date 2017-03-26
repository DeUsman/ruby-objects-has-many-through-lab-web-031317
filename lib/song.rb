class Song
attr_accessor :genre, :artist
attr_reader :name

def initialize(song_name, genre)
  if(genre.name)
    genre.songs.push(self)
  else
  genre = Genre.new(genre)
  genre.songs.push(self)
  end
  @name = song_name
  @genre = genre
  @artist = nil
  end
end