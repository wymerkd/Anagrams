class Anagram
  attr_accessor(:first_word, :second_word)

  def initialize(first_word, second_word)
    @first_word = first_word.downcase().split('').sort()
    @second_word = second_word.downcase().split('').sort()
    @is_it_anagram = ''
    @is_it_word = ''
    @is_it_antigram = ''
    @vowels = ["a", "e", "i", "o", "u", "y"]
  end

#Checks if both first_word and second_word arrays are equal to determine if anagram
  def anagram_check
    if @first_word == @second_word
      @is_it_anagram = "These words are anagrams."
    else
      @is_it_anagram = "These words are not anagrams."
    end
  end

#Checks if first_word array contains vowels, if it does, it checks second_word array for vowels.
  def word_check
    @first_word.each do |vowel|
      if (@vowels.include?(vowel))
        @second_word.each do |vowel|
          if (@vowels.include?(vowel))
            @is_it_word = "These are real words."
          end
        end
      else
        @is_it_word = "You need to input actual words!"
      end
    end
    @is_it_word
  end

  def antigram_check
    antigrams = @first_word & @second_word
    if antigrams.empty? === false
      @is_it_antigram = "These words have letter matches."
    else
      @is_it_antigram = "These words have no letter matches and are antigrams."
    end


    # @first_word.each do |letter|
    #   if (!@second_word.include?(letter))
    #     @is_it_antigram = "These words have no letter matches and are antigrams."
    #   else
    #     @is_it_antigram = "These words have letter matches."
    #   end
    # end
  end
end
