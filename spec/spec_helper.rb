require 'pry-byebug'
require 'lib/piglatin.rb'

describe 'PigLatin' do
  context 'when a word starts with a vowel sound' do
    it "does not change the beginning of the word, but adds way to the end" do
      result = PigLatin.translate("apple")
      expect(result).to eq("appleway")
    end
  end
end