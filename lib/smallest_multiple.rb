# Implement your procedural solution here!
require 'pry'
###PROBLEM STATEMENT
# find the smallest positive number that is evenly disible by 
# all of the numbers from 1 to n
###
# ex: 
# 2520 is the smallest number that can be 
# divided by each of the numbers from 1 to 10 without any remainder.
# DO THE MATH FOR 1...5
# see if that makes sense...then define1 % 2
# a function that finds the lowest multiple given an input of a number

# 1 to number evaluate if it is a least common multiple

def smallest_multiple(input)
  # Array provides lcm() which gives you the least common multiple of two numbers. 
  # You can apply this to an entire array by applying it to each result as you go through it. 
  # This is what reduce does.
  # LCM Returns the least common multiple (always positive). 0.lcm(x) and x.lcm(0) return zero.
  (1..input).to_a.reduce{:lcm}
end

print smallest_multiple(10)



##EUCLIDEAN
# Input

# Two positive integers, a and b.
# Output

# The greatest common divisor, gcd, of a and b.
# Internal computation

# If a < b, exchange a and b.
# Divide a by b and get the remainder, r. If r = 0, report b as the GCD of a and b.
# Replace a by b and replace b by r. Return to the previous step.
