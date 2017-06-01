# my solution - did not pass tests
def anagrams(word, words)
  unique_letters=word.split.uniq
  anagram_words = []
  words.each do |anagram|
    fail = 0
    unique_letters.each do |letter|
      if anagram.count(letter) != word.count(letter)
        fail += 1
      end
    end
    if fail = 0
      anagram_words << words
    end
  end
  anagram_words
end

# other solutions -- much cleaner

def anagrams(word, words)
  words.select { |w| w.chars.sort == word.chars.sort }
end

def anagrams(word, words)
  wa = word.split('').sort
  words.select {|w| w.split('').sort == wa}
end
