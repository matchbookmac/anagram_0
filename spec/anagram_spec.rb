require('rspec')
require('anagram')

describe('Array#anagram?') do
  # Costa, hello, coastal, Coast, Range, ascot, coats
  it('takes the input array and returns which of the entries are anagrams of the first entry in the array') do
    expect(['tacos', 'Costa', 'hello', 'coastal', 'Coast', 'Range', 'ascot', 'coats'].anagram?()).to(eq(['ascot', 'Coast', 'coats', 'Costa', 'tacos']))
  end
end
