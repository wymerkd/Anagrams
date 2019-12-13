require('rspec')
require('anagram_logic')

describe('#anagram_check') do
  # First test for requirement 1
  it('checks if two words are anagrams') do
    anagram = Anagram.new("ruby", "bury")
    expect(anagram.anagram_check).to(eq("These words are anagrams."))
  end

  # Second test for requirement 1
  it('checks if two words are not anagrams') do
    anagram = Anagram.new("ruby", "rails")
    expect(anagram.anagram_check).to(eq("These words are not anagrams."))
  end

  # First test for requirement 2
  it('accounts for the possibility that words might have different cases but should still be anagrams') do
    anagram = Anagram.new("RUBY", "Bury")
    expect(anagram.anagram_check).to(eq("These words are anagrams."))
  end
end

describe('#word_check') do
  # First test for requirement 3
  it('checks if the inputs are words') do
    anagram = Anagram.new("ruby", "bury")
    expect(anagram.word_check).to(eq("These are real words."))
  end
end
