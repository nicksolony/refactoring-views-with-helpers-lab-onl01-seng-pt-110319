class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      artist.name
    end
  end

  def artist_name=(name)
    if self.artist = Artist.find_by(name: name)
      else
        self.create_artist(name: name)
    end
  end
end
