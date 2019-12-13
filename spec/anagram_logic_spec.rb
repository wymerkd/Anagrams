require('rspec')
require('anagram_logic')

describe('#anagram_check') do
  it('checks if two words are anagrams') do
    anagram = Anagram.new("RUBY", "rubi")
    expect(anagram.anagram_check).to(eq("These words are anagrams."))
  end
end
