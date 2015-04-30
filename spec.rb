require 'minitest/autorun'
require_relative 'fizzbuzz'

describe "FizzBuzz" do
	
  before do 
    @fb = FizzBuzz.new
    @number = 15*rand(1..100) + 1
  end

  it "return Fizz for multiples of 3" do
  	@fb.print(3*@number).must_equal "Fizz"
  end

  it "returns Buzz for multiples of 5" do
  	@fb.print(5*@number).must_equal "Buzz"
  end

  it "returns FizzBuzz for multiples of 15" do	
  	@fb.print(15*@number).must_equal "FizzBuzz"
  end

  it "returns the number as a string for all non FizzBuzz numbers" do
  	@fb.print(@number).must_equal @number.to_s
  end

  it "does not return FizzBuzz for a non multiple of 15" do
  	@fb.print(@number).wont_equal "FizzBuzz"
  end

  it "returns an array when we give an array object as an argument" do
  	@fb.print(1..5).must_be_instance_of Array
  end

  it "raises an error if the number is negative" do
  	proc {@fb.print(-1)}.must_raise ArgumentError 
  end

  it "raises an error if the argument is 0" do
  	proc {@fb.print(0)}.must_raise ArgumentError
  end

  it "raises an error if the number is not an integer" do
  	proc {@fb.print(3.5)}.must_raise ArgumentError
  end

end