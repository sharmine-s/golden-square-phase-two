class MusicTracks

  def initialize
    @list_of_songs = []
  end

  def add_track(song)
    fail "Track needs to be a string" unless song.is_a? String
    @list_of_songs << song
    return "#{song} successfully added!"
  end

  def show_tracks
    return @list_of_songs
  end

end