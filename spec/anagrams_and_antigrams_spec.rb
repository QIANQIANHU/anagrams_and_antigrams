require('rspec')
require('anagrams_and_antigrams')

# require('pry')

describe('#anagrams_and_antigrams') do
  it("check two words are anagrams or not") do
    expect(anagrams_and_antigrams?("cat", "tac")).to(eq( "These words are anagrams."))
  end
  it("check two words with different cases are anagrams or not") do
    expect(anagrams_and_antigrams?("Tea", "Eat")).to(eq( "These words are anagrams."))
  end
  it("check two words are palindrome or not") do
    expect(anagrams_and_antigrams?("abba", "baab")).to(eq("These words are palindrome."))
  end
end
