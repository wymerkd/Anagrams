require('rspec')
require('anagram_logic')

describe('#anagram_check') do
  it('returns input words as lowercase strings') do
    test = Anagram.new("RUBY", "BURY")
    expect(test.lowercase_words("RUBY", "BURY")).to(eq("ruby"))
  end
end
