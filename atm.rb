def withdraw(amount)

  notes = [20,10,5]

  if amount <= 0 || amount % notes.min != 0
    return false
  end
  ##################################################
  #
  #             Your code goes here
  #
  ##################################################

  array = []

  notes.each do |note|
    number_of_notes = amount / note
    number_of_notes.times do 
      array << note
      amount = amount - note
    end
  end

  array
end

# import required testing libraries
require 'minitest/spec'
require 'minitest/autorun'

# Below are the tests for automatically checking your solution.
# You need to replace these tests after each step.

describe 'atm' do
  [
    [-1, false],
    [0, false],
    [7, false],
    [53, false],
    [35, [20, 10, 5]],
    [40, [20, 20]],
    [65, [20, 20, 20, 5]],
    [70, [20, 20, 20, 10]],
    [75, [20, 20, 20, 10, 5]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end