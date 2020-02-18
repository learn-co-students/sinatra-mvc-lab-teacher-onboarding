class PigLatinizer
  def piglatinize(str)
    words = str.split(" ").map { |word|
      word.match?(/^[aeiou]/i) ?
        "#{word}way" :
        "#{word.match(/([aeiou].*)$/i)[0]}#{word.match(/^([^aeiou]+)/i)[0]}ay"
    }
    words.join(" ")
  end
end
