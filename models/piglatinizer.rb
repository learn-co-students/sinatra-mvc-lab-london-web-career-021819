class PigLatinizer

  def piglatinize(words)
    words.split.collect do |word|
      match = word.match(/\A[bcdfghjklmnpqrstvwxyz]+/i)
      stub = word.sub(/#{match}/i, '')
      match ? "#{stub}#{match}ay" : "#{word}way"
    end.join(' ')
  end

end
