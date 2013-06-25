words_array = File.readlines('db/dictionary.txt')

words_array.each do |word|
  word = word.chomp
  sorted_word = word.downcase.split("").sort.join("")
  length = word.length
  Word.create(word: word, sorted_word: sorted_word, length: length)
end


