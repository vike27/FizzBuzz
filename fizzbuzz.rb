class FizzBuzz 

	def print(num)
		if num.respond_to?(:each)
			final_arr = []
			num.each do |x|
				final_arr << test(x)
			end
		final_arr
		else
			test(num)
		end
	end	


	private
	def test(num)
		raise ArgumentError unless num > 0
		raise ArgumentError, "Integers only" unless num.is_a? Integer

		if num % 15 == 0 
			return "FizzBuzz"
		elsif num % 5 == 0
			return "Buzz"
		elsif num % 3 == 0
			return "Fizz"
		else
			return num.to_s
		end
	end

end