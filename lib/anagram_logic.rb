class Anagram
  attr_accessor(:first_word, :second_word)

  def initialize(first_word, second_word)
    @first_word = first_word
    @second_word = second_word
  end

  def anagram_check
    @first_word = @first_word.split('').sort
    @first_word = @first_word.split('').sort
  end
end
