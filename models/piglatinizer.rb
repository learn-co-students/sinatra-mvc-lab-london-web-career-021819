require "pry"

class PigLatinizer

  attr_accessor :text

  def piglatinize(string)
    split_string = string.split(" ")

    piglatin = split_string.map do |word|
      letters = word.chars
      if letters[0].match(/[aAeEiIoOuU]/)
        letters << "way"
      else
        until letters[0].match(/[aAeEiIoOuU]/)
          letters << letters.shift
        end
        letters << "ay"
      end
      letters.join
    end
    piglatin.join(" ")
  end
end
