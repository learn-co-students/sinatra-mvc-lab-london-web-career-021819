class PigLatinizer
  
  attr_accessor :text

  # def initialize(text)
  #   @text = text
  # end

  def piglatinize(text)
    @text = text
    words = @text.split(" ")
    vowels = ['a','e','i','o','u']
    words.each do |word|
      if vowels.include?(word[0].downcase)
        word << 'way'
      else
        until vowels.include?(word[0].downcase)
          word << word[0]
          word[0] = ''
        end
         word<<'ay'
      end
    end
    words.join(' ')
  end
  

end