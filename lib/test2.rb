def smallest_multiple(input)
  # Array provides lcm() which gives you the least common multiple of two numbers. 
  # You can apply this to an entire array by applying it to each result as you go through it. 
  # This is what reduce does.
  (1..input).to_a.reduce{|m,n| m.lcm(n)}
end