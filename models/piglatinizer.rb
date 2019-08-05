class PigLatinizer
  attr_reader :text

  def initialize(text="piglatin")
    @text = text.downcase
  end

  def piglatinize(text)
    @text = text
    vowels = "aeiou"
    pl_text_array = @text.split(" ")
    pl_text_array.map do |word|
      if vowels.include?(word[0].downcase)
        pl_word = word + "way"
      else
        characters = word.split("")
        first_vowel_index = -1
        characters.each do |character|
          first_vowel_index += 1
          if vowels.include?(character.downcase)
            break
          end
        end
        pl_word = word[first_vowel_index..-1] + word[0...first_vowel_index] + "ay"
      end
    end.join(" ")
  end
end