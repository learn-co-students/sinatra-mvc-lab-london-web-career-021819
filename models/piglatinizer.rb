require "pry"

class PigLatinizer

  def initialize
  end


  #piglatinize words starting with a consonant or multiple consonants
  def piglatinize_consonant(word)
    #returns an array: "track" => ["tr", "ck"]
    consonants_array = word.split(/[aAeEoOuUiI]/)
    first_consonants = consonants_array[0]

    first_consonants_count = first_consonants.length
    sliced_word = word.slice(first_consonants_count, word.length - first_consonants_count)
    piglatinized_word = sliced_word + first_consonants + 'ay'
  end

  def piglatinize_vowel(word)
    word + "way"
  end

  def piglatinize_w(word)
    first_letter = word[0]
    if first_letter.match(/[aAeEoOuUiI]/)
      piglatinize_vowel(word)
    else
      piglatinize_consonant(word)
    end
  end

  def piglatinize(text)
    words_array = text.split (" ")

    piglatinized_array = words_array.map {|word| piglatinize_w(word)}
    piglatinized_array.join(" ")

  end

end

#binding.pry
"test"
