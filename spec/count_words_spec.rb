require 'count_words'

RSpec.describe "count_words" do
  it "counts how many words are in a string" do
    result = count_words("how many words in this sentence")
    expect(result).to eq 6
  end
end
