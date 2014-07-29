require "piglatin/version"

module PigLatin
  
  def self.translate(word)
    word = word.to_s.downcase
    return :error if word.match(/\W/) || word.match(/\d/) || !word.match(/[aeiouy]/)
    return "#{word}way" if word.match(/^[aeiou]/)
    return "#{word.delete("qu")}quay" if word.match(/^(qu)/)
    initial_string = word.slice!(0)
    initial_string = initial_string + word.slice!(0) while !word.match(/^[aeiouy]/)
    "#{word}#{initial_string}ay"
  end

end
