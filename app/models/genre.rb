class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.all.count
  end

  def artist_count
    artists.all.count
  end

  def all_artist_names
    artists.all.collect {|artist| artist.name}
  end
end
