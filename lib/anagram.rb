require('pry')

class Array

  define_method(:downcase) do
    self.each() do |word|
      word.downcase!()
    end
    self
  end

  define_method(:anagram?) do
    # find the root word and split it into an array of its characters
    root_word = self.slice!(0).downcase().split(//).sort()

    # sort the array of words
    word_list = self
    word_list.downcase().sort()

    # for each word in the array of words
    anagrams = []
    word_list.each() do |word|
      # split the current word into an array of its characters
      split_word = word.split(//).sort()
      if root_word.eql?(split_word)
        anagrams.push(word)
      end
    end
    # return array of anagrams
    anagrams
  end
end
