class Genre
attr_accessor :name
attr_reader :songs, :artists

  def initialize(genre)
    @name = genre
    @songs = []
    @artists = []
  end
end