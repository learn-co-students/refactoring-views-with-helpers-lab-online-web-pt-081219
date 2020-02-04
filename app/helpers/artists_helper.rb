module ArtistsHelper

    def display_artist(song)
        if song.artist == nil
            link_to "Add Artist", "/songs/#{song.id}/edit"
        else
            link_to song.artist.name, artist_path(song.artist)
        end
    end
end
