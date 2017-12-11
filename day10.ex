
defmodule Day10 do
	use Bitwise
	@inputPart1 [183,0,31,146,254,240,223,150,2,206,161,1,255,232,199,88]
	@inputPart2 '183,0,31,146,254,240,223,150,2,206,161,1,255,232,199,88' ++ [17, 31, 73, 47, 23]

	def part1() do
		sample = Enum.to_list(0..255)
		convertedSample = runTwist(sample,0,0,@inputPart2,0)
		# Part 1
		{[one|[two|_]],_,_} = twist(sample,0,0,@inputPart1)
		IO.inspect(one * two)
		# Part 2
		chunk(convertedSample) |> Enum.map(&(shift(&1))) |> Enum.map(&(convertToHEX(&1))) |> reduceHash |> IO.inspect
	end

	def runTwist(list,_,_,_,count) when count == 64, do: list
	def runTwist(list,index,skip,len,count) do
		{list,index,skip} = twist(list,index,skip,len)
		runTwist(list,index,skip,len,count+1)
	end

	def twist(list,index,skip,[len|tail]) do
		newList = list |> lrotate(index) |> Enum.reverse_slice(0,len) |> rrotate(index)	
		twist(newList,findNextIndex((len + index + skip),Enum.count(list)),skip+1,tail)
	end
	def twist(list,index,skip,[]) do
		{list,index,skip}
	end

	def chunk(list), do: Enum.chunk(list,16)

	def shift(arr) do
		Enum.reduce(arr,0,fn(x,acc) ->
			acc ^^^ x
		end)
	end

	def convertToHEX(num) when num < 10, do: "0" <> Integer.to_string(num,16) |> String.downcase	
	def convertToHEX(num), do: Integer.to_string(num,16) |> String.downcase	

	def reduceHash(arr), do: Enum.reduce(arr,"",fn(x,acc) -> acc <> x end)

	def rrotate(list,number), do: lrotate(list,(Enum.count(list) - number))
	def lrotate(list, 0), do: list
  def lrotate([head|list], number), do: lrotate(list ++ [head], number - 1)
	def lrotate(list, number), do: list |> Enum.reverse |> lrotate(number) |> Enum.reverse

	def findNextIndex(nextIndexGuess,total) when nextIndexGuess > total, do: findNextIndex((nextIndexGuess - total),total)
	def findNextIndex(nextIndexGuess,_), do: nextIndexGuess
end
	Day10.part1()
