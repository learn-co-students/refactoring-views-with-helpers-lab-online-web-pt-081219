class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    # Only keep going if the thing on the left (self.artist) is not nil. If it's not nil, keep on moving and do the `.name`.
    # This is called a Safe Navigation Operator. 
    self.artist&.name
  end

  def artist_name=(name)
    if self.artist
      self.artist.name = name
    elsif (artist = Artist.find_by(name: name))
      self.artist = artist
    else
      self.create_artist(name: name)
    end
  end
end
