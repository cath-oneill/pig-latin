require 'pry-byebug'
require './lib/piglatin.rb'

describe 'PigLatin' do
  context 'when a word starts with a vowel sound' do
    it "does not change the beginning of the word, but adds way to the end" do
      result = PigLatin.translate("apple")
      expect(result).to eq("appleway")
    end
  end

    context 'when a word starts with a single consonant' do
    it "takes the consonant off the beginning, adds it to the end, and adds ay" do
      result = PigLatin.translate("rooster")
      expect(result).to eq("oosterray")

      result = PigLatin.translate("happiness")
      expect(result).to eq("appinesshay")

      result = PigLatin.translate("zebra")
      expect(result).to eq("ebrazay")

    end
  end

  context 'when a word starts with a consonant blend' do
    it "takes the 2+ consonants off the beginning, adds them to the end, and adds ay" do
      result = PigLatin.translate("thorn")
      expect(result).to eq("ornthay")

      result = PigLatin.translate("Christmas")
      expect(result).to eq("istmaschray")

      result = PigLatin.translate("shameful")
      expect(result).to eq("amefulshay")

    end
  end

  context 'when a word starts with a y' do
    it "y is treated as a consonant" do
      result = PigLatin.translate("yes")
      expect(result).to eq("esyay")

      result = PigLatin.translate("yellow")
      expect(result).to eq("ellowyay")

    end
  end

  context 'when y is not the first letter' do
    it 'is treated as a vowel' do
      result = PigLatin.translate("rhythm")
      expect(result).to eq("ythmrhay")
    end
  end

  context 'when there is a number in the word' do
    it 'it returns an error symbol' do
      result = PigLatin.translate("rh87agt")
      expect(result).to eq(:error)
    end
  end

  context 'when there are no vowels' do
    it 'it returns an error symbol' do
      result = PigLatin.translate("jhgftr")
      expect(result).to eq(:error)
    end
  end

  context 'when there is a non-letter symbol included' do
    it 'it returns an error symbol' do
      result = PigLatin.translate("hgut&h")
      expect(result).to eq(:error)
    end
  end

  context 'when a non-string is passed' do
    it 'it should return an error symbol for numbers, but convert booleans to strings and translate' do
      result = PigLatin.translate(901)
      expect(result).to eq(:error)

      result = PigLatin.translate(true)
      expect(result).to eq("uetray")
    end
  end
end