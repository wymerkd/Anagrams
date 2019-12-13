require('rspec')
require('anagram_logic')

describe('#anagram_check') do
  it('determines if two words are anagrams') do
    test = Anagram.new()
    expect(test.anagram_check()).to(eq())
  end
end
