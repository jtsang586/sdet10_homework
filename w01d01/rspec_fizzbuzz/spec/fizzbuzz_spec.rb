
describe Fizzbuzz do

    before(:each) do 
        @fizz = Fizzbuzz.new
    end

    it "should have a start method" do 
        expect(@fizz).to respond_to(:start)
    end

    it "should have a fiz method" do 
        expect(@fizz).to respond_to(:fizz)
    end

    it "should have a buzz method" do 
        expect(@fizz).to respond_to(:buzz)
    end

    it "should have a fizzbuzz method" do 
        expect(@fizz).to respond_to(:fizzbuzz)
    end

    it "should have a compare method" do 
        expect(@fizz).to respond_to(:compare)
    end

    it "should have a compare_threes method" do 
        expect(@fizz).to respond_to(:compare_threes?)
    end

    it "should have a compare_fives method" do 
        expect(@fizz).to respond_to(:compare_fives?)
    end

    it "should return true if multiple of three" do 
        expect(@fizz.compare_threes?(3)).to equal(true)
    end

    it "should return true if multiple of three" do 
        expect(@fizz.compare_threes?(5)).to equal(false)
    end

    it "should return true if multiple of five" do 
        expect(@fizz.compare_fives?(5)).to equal(true)
    end

    it "should return true if multiple of five" do 
        expect(@fizz.compare_fives?(3)).to equal(false)
    end

    it "should be array size of range" do 
        @fizz.start
        expect(@fizz.x.size).to equal(100)
    end

    it "should be fizz in number 3 of array" do 
        @fizz.start
        expect(@fizz.x[2]).to eql("fizz")
    end

    it "should be buzz in number 5 of array" do 
        @fizz.start
        expect(@fizz.x[4]).to eql("buzz")
    end

    it "should be fizzbuzz in number 15 of array" do 
        @fizz.start
        expect(@fizz.x[14]).to eql("fizzbuzz")
    end

    it "should be 31 in number 31 of array" do 
        @fizz.start
        expect(@fizz.x[30]).to eql(31)
    end
    

end

