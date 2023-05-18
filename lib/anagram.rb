
class Anagram
    attr_reader :word
  
    def initialize(word)
      @word = word
    end
  
    def match(words)
      words.select { |w| anagram?(w) }
    end
  
    private
  
    def anagram?(other_word)
      sorted_word == sort_letters(other_word)
    end
  
    def sorted_word
      @sorted_word ||= sort_letters(word)
    end
  
    def sort_letters(str)
      str.downcase.chars.sort.join
    end
  end
  