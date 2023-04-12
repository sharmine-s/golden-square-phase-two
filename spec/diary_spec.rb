require 'diary'

RSpec.describe "diary" do
  it "returns the first five words of a long sentence" do
    result = make_snippet("one two three four five six")
    expect(result).to eq "one two three four five..."
  end
end