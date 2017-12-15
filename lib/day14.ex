
defmodule Day14 do
	require Day10
	use Bitwise
	@inputPart2 'ffayrhll'

	def part1() do
		0..127 |> Enum.with_index
		|> Enum.map(fn({_,i}) -> 
				Day10.hash(@inputPart2 ++ '-#{i}') |> hexToBin  |> sum
		end)	 |> Enum.reduce(0,&(&1+&2))
	end
	def part2() do
		0..127 |> Enum.with_index
		|> Enum.map(fn({_,i}) -> 
				Day10.hash(@inputPart2 ++ '-#{i}') |> hexToBin  |> IO.inspect
		end) |> convertToMaps
	end
	def convertToMaps(arr) do
		arr 
		|> Enum.map(&(&1 |> Enum.with_index |> flipIndex |> Enum.into(%{})))	
		|> Enum.with_index |> flipIndex |> Enum.into(%{})
	end
	def flipIndex(arr) do
		arr |> Enum.map(fn({x,i}) -> {i,x} end)
	end
	def hexToBin(str) do
		String.graphemes(str)
		|> Enum.map(&(String.to_integer(&1,16)))
		|> Enum.map(&(Integer.to_string(&1,2)))
		|>Enum.map(&(String.pad_leading(&1,4, "0")))
		|> Enum.join
		|> String.split("", trim: true) 
	end
	def sum(arr) do
		arr |> Enum.reduce(0,fn(x,acc) -> 
			String.to_integer(x) + acc
		end)
	end
end
sample = [[1,0,0,1],
		[1,0,0,0],
		[0,1,1,0],
		[0,1,1,1]]
		Day14.convertToMaps(sample) |> IO.inspect
