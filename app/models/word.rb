class Word < ActiveRecord::Base
  scope :anagram_matches, lambda { |word| where(sorted_word: canonnical(word)) }

  def self.canonnical(user_input)
    user_input.downcase.split("").sort.join("")
  end
end
