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
  # starting_point = 1
  x = 1
  (2..input).to_a.each do |y|
    x *= y / gcd(x, y)
  end 
  x
end

# define greatest commond divisor for x and y
##
# end

def gcd(a, b)
  # In mathematics, the greatest common divisor (gcd) of two or more integers, 
  # when at least one of them is not zero, 
  # is the largest positive integer that divides the numbers 
  # without a remainder. For example, the GCD of 8 and 12 is 4
  return a if b.zero?
  # will continue to run until b=0, and which time we return a
  gcd(b, a%b)
  # while running a against b given as arguments from call in smallest multiple
  # b vs remainer of a / b 
  # return of this function is a number, a
  
end

smallest_multiple(10)
# print gcd(54, 24)
# prints 6, why?
# a = 54
# call gcd on 24 and (54 % 24) = 6
# a = 24, b = 6
# call gcd on 6 and (24 % 6) = 0
# a = 6, b = 0
# b == 0,  so return 6


##EUCLIDEAN
# Input

# Two positive integers, a and b.
# Output

# The greatest common divisor, gcd, of a and b.
# Internal computation

# If a < b, exchange a and b.
# Divide a by b and get the remainder, r. If r = 0, report b as the GCD of a and b.
# Replace a by b and replace b by r. Return to the previous step.
