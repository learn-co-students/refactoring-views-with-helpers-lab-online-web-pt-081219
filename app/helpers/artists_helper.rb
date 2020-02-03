module ArtistsHelper
    def display_artist(song)
        if song.artist.nil? || song.artist.name.blank?
          link_to "Add Artist", edit_song_path(song)
        else
          link_to "By #{song.artist.name}", artist_path(song.artist)
        end
    end
end
