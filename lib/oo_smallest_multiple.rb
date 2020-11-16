# Implement your object-oriented solution here!

class SmallestMultiple
attr_accessor :num

    def initialize(num)
        @num = num
    end

    def lcm
        (1..num).reduce(:lcm)
    end
end