require 'music_tracks'

RSpec.describe MusicTracks do
  it "adds a track to the music list" do
    list = MusicTracks.new
    result = list.add_track("Linkin Park - Numb")
    expect(result).to eq "Linkin Park - Numb successfully added!"
    result = list.add_track("Burna Boy - On The Low")
    expect(result).to eq "Burna Boy - On The Low successfully added!"
  end

  it "shows the tracks that have been added" do
    list = MusicTracks.new
    list.add_track("Linkin Park - Numb")
    list.add_track("Burna Boy - On The Low")
    result = list.show_tracks
    expect(result).to eq ["Linkin Park - Numb", "Burna Boy - On The Low"]
  end

  context "the song added needs to be a string" do
    it "fails" do
      list = MusicTracks.new
      expect { list.add_track(4) }.to raise_error "Track needs to be a string"
    end
  end
end