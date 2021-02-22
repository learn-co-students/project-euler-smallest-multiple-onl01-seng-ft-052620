# Implement your object-oriented solution here!
require 'pry'

class SmallestMultiple
  attr_reader :lcm, :input

  def initialize (input)
    @input = input
    @lcm = smallest_multiple
  end

  def smallest_multiple

    (1..input).to_a.reduce(:lcm)
  end


end

a = SmallestMultiple.new(10)
