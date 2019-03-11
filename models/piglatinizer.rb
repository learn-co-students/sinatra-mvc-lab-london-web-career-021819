#My code works and matches the results in the spec. No idea what the learn console is returning because it goes crazy when you type 'learn'. 

class PigLatinizer

  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def vowel?(letter)
    letter.match(/[aAeEiIoOuU]/)
  end

  def consonant?(letter)
    !letter.match(/[aAeEiIoOuU]/)
  end


  def translate(text)
    words = @text.split(" ")
    new_words = []
    words.each do |word|
      letters = word.split("")

      if vowel?(letters[0])
        letters << "way"
        new_words << letters.join("")
      elsif consonant?(letters[0]) && consonant?(letters[1]) && consonant?(letters[2])
        first_letter = letters[0]
        second_letter = letters[1]
        third_letter = letters[2]
        letters[0] = letters[1] = letters[3] = ""
        letters << first_letter + second_letter + third_letter + "ay"
        new_words << letters.join("")
      elsif consonant?(letters[0]) && consonant?(letters[1])
        first_letter = letters[0]
        second_letter = letters[1]
        letters[0] = letters[1] = ""
        letters << first_letter + second_letter + "ay"
        new_words << letters.join("")
      elsif consonant?(letters[0])
        first_letter = letters[0]
        letters[0] = ""
        letters << first_letter + "ay"
        new_words << letters.join("")
      end
    end
    new_words.join(" ")
  end

end
