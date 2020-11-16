# Implement your procedural solution here!
def smallest_multiple(num)
        (1..num).reduce(:lcm)

end