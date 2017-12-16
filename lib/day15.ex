
defmodule Day15 do
	# {a,b}
	use Bitwise
@input {699,124}
@sample {65,8921}
	def part1() do
		genNumbersStream(@input) |> Stream.take(40_000_000) |> Stream.filter(&compare/1) |> Enum.to_list |> length
	end
	def part2() do

	end
	def binary_tail(number) do
    number &&& 65535
	end
	def genNumbers(startingNums) do
		{arr,acc} = Enum.map_reduce(0..(5 - 1),startingNums,fn(x,{a,b}) ->
		aVal = rem(a*16807,2147483647)	
		bVal = rem(b*48271,2147483647)
			{{aVal,bVal},{aVal,bVal}}
		end)
		arr
	end
	def genNumbersStream(startingNums) do
		stream = Stream.unfold(startingNums,fn({a,b}) ->
		aVal = rem(a*16807,2147483647)	
		bVal = rem(b*48271,2147483647)
			{{aVal,bVal},{aVal,bVal}}
		end)
	end
	def compare({x,y}), do: binary_tail(x) == binary_tail(y)
	def last(str) do
		ln = String.length(str)
		String.slice(str,(ln-16)..ln)		
	end
	def toBinary(val), do: val|> Integer.to_string(2)
end
# Day15.binary_tail(245556042) |> IO.inspect
# Day15.binary_tail(1431495498) |> IO.inspect
Day15.part1() |> IO.inspect