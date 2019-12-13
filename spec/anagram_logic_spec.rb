require('rspec')
require('anagram_logic')

describe('#anagram_check') do
  it('checks if two words are anagrams') do
    anagram = Anagram.new("RUBY", "Bury")
    expect(anagram.anagram_check).to(eq("These words are anagrams."))
  end

  it('checks if two words are not anagrams') do
    anagram = Anagram.new("RUBY", "Bury")
    expect(anagram.anagram_check).to(eq("These words are not anagrams."))
  end
end
