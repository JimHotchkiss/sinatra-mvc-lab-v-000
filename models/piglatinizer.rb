require 'pry'
class PigLatinizer

  def piglatinize(string)
    vowels = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U']
    words = string.split(' ')
    @all = []

    words.each do |word|
      if vowels.include? word[0]
        @all << word + 'way'
      else
        @all << word.sub(word[0],'') + word[0] + 'ay'
      end
    end
    @all.join(', ')
  end #This returns an array of the piglatin words

end
