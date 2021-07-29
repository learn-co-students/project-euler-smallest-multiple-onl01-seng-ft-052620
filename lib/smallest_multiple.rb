# Implement your procedural solution here!


def smallest_multiple(input)
    
    range = (1..input).to_a
    multiple = 1

    range.each do |num|
        multiple = lcm(multiple, num)
    end 

    multiple
end 


def lcm 

    

end 