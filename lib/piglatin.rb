require "piglatin/version"

module PigLatin
  
  def self.translate(word)
    word = word.downcase    
    if word.match(/^[aeiou]/)
      return "#{word}way"
    else
      initial_string = word.slice!(0)
      initial_string = initial_string + word.slice!(0) while !word.match(/^[aeiouy]/)
      return "#{word}#{initial_string}ay"
    end
  end

end
