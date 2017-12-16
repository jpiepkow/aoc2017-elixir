
defmodule Day15 do
	use Bitwise
@input {699,124}
@sample {65,8921}
	def part1() do
		{a,b} = @input
		nums1 = genNumbersStream(a,16807) 
		nums2 = genNumbersStream(b,48271) 
		Stream.zip(nums1,nums2) |> Stream.take(40_000_000) |>  Stream.filter(&compare/1) |> Enum.to_list |> Enum.count |> IO.inspect
	end
	def part2() do
		{a,b} = @input
		nums1 = genNumbersStream(a,16807) |> Stream.filter(&(rem(&1,4) === 0))
		nums2 = genNumbersStream(b,48271) |> Stream.filter(&(rem(&1,8) === 0))
		Stream.zip(nums1,nums2) |> Stream.take(5_000_000) |>  Stream.filter(&compare/1) |> Enum.to_list |> Enum.count |> IO.inspect
	end
	def binary_tail(number) do
    number &&& 65535
	end
	def genNumbersStream(startingNums,val) do
		Stream.unfold(startingNums,fn(acc) ->
			v = rem(acc*val,2147483647)	
			{v,v}
		end)
	end
	def compare({x,y}), do: binary_tail(x) == binary_tail(y)
end
# Day15.part2()
# Day15.part1()