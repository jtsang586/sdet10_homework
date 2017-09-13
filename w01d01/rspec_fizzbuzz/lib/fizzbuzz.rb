class Fizzbuzz

    attr_accessor :x

    def initialize
        @x = []
    end

    def start
        (1..100).each do |i|
            compare(i)
        end
    end

    def fizz
        @x.push("fizz")
    end

    def buzz
        @x.push("buzz")
    end

    def fizzbuzz
        @x.push("fizzbuzz")
    end

    def compare(num)

        if compare_threes?(num) == true && compare_fives?(num) == true
            fizzbuzz
        elsif compare_threes?(num) == true
            fizz
        elsif compare_fives?(num) == true
            buzz
        else 
            @x.push(num)
        end        
    end

    def compare_threes?(num)
        num % 3 == 0

    end

    def compare_fives?(num)
        num % 5 == 0 
    end
end
