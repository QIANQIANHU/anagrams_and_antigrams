require('rspec')
require('anagrams_and_antigrams')

# require('pry')

describe('#anagrams?') do
  it("check two words are anagrams or not") do
    expect(anagrams?("cat", "tac")).to(eq(true))
  end
end
