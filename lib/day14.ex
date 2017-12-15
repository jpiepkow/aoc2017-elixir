
defmodule Benchmark do
  def measure(function) do
    function
    |> :timer.tc
    |> elem(0)
    |> Kernel./(1_000_000)
  end
end
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
		arrToUse = 0..127 |> Enum.with_index
		|> Enum.map(fn({_,i}) -> 
				Day10.hash(@inputPart2 ++ '-#{i}') |> hexToBin
		end) 
		Benchmark.measure(fn -> 
		convertToMaps(arrToUse)
		|> fGWrap(0,0,0,127)
		|> reduceToArray
		|> countGroups
		end) |> IO.inspect
		
	end
	def convertToMaps(arr) do
		arr 
		|> Enum.map(&(&1 |> Enum.with_index |> flipIndex |> Enum.into(%{})))	
		|> Enum.with_index |> flipIndex |> Enum.into(%{})
	end
	def flipIndex(arr) do
		arr |> Enum.map(fn({x,i}) -> {i,x} end)
	end
	#BASE CASE
	def fGWrap(map,row,col,_,gridSize) when row >= gridSize and col > gridSize do
		map
	end
	def fGWrap(map,row,col,count,gridSize) when col > gridSize do
		fGWrap(map,row+1,0,count,gridSize)
	end
	def fGWrap(map,row,col,count,gridSize) do
		newMap = findGroups(map,row,col,count)
		fGWrap(newMap,row,col+1,count+1,gridSize)
	end
	# end of row move to next
	# actual logic of find group
	def findGroups(map,row,col,count) do

		{:ok,{cVal,_,_}} = getFromMap(map,row,col)
		left = getFromMapWrap(map,row,col - 1,cVal)
		right = getFromMapWrap(map,row,col + 1,cVal)
		up = getFromMapWrap(map,row - 1,col,cVal)
		down = getFromMapWrap(map,row + 1,col,cVal)
		case cVal do
		{_,_} -> map	
		_ -> addGroup(map,row,col,count)
		end |>
		shouldRecurs(left,count) |>
		shouldRecurs(right,count) |>
		shouldRecurs(up,count) |>
		shouldRecurs(down,count)
		# findGroups(row,col+1,count+1)
	end
	def shouldRecurs(map,{:ok,{_,row,col}},count) do
		findGroups(map,row,col,count)	
	end
	def shouldRecurs(map,{:error,_},_) do
		map	
	end
	def getFromMapWrap(map,row,col,current) do
		case getFromMap(map,row,col) do
			{:ok,{{val,group},row,col}} -> {:error,{{val,group},row,col}}
			{:ok,{val,row,col}} -> compareVals({val,row,col},current)	
			{:error,val} -> {:error,val}
		end
	end
	def compareVals({val,row,col},current) when val === current do
		{:ok,{val,row,col}}	
	end
	def compareVals({val,row,col},_) do
		{:error,{val,row,col}}	
	end
	def getFromMap(map,row,col) do
		with {:ok,innerMap} <- Map.fetch(map,row),
		  	 {:ok,val} <- Map.fetch(innerMap,col)
		do
			{:ok,{val,row,col}}
		else
		:error -> {:error,{nil,row,col}}
		end
	end

	def addGroup(map,row,col,groupVal) do
		currentVal = map |> Map.get(row) |> Map.get(col)
		put_in(map, [row,col],{currentVal,groupVal})
	end
	def hexToBin(str) do
		String.graphemes(str)
		|> Enum.map(&(String.to_integer(&1,16)))
		|> Enum.map(&(Integer.to_string(&1,2)))
		|> Enum.map(&(String.pad_leading(&1,4, "0")))
		|> Enum.join
		|> String.split("", trim: true) 
	end
	def reduceToArray(map) do
		Map.to_list(map) |>
		Enum.map(fn({_,map}) -> 
			Map.to_list(map) |> Enum.filter(&(filterGroup(&1))) |>  Enum.map(&(returnGroup(&1)))
		end)
	end
	def countGroups(arr) do
	arr |>
	Enum.reduce([],&(&1 ++ &2))	
	|> Enum.uniq |> Enum.count
	end
	def filterGroup({_,{val,_}}) do
		val === "1"
	end
	def returnGroup({_,{_,group}}) do
		group
	end
	def sum(arr) do
		arr |> Enum.reduce(0,fn(x,acc) -> 
			String.to_integer(x) + acc
		end)
	end
end
	Benchmark.measure(fn -> Day14.part2() end)
# Day14.part1() |> IO.inspect
# sample = [[1,0,1,1,1],
# 		      [1,0,0,0,1],
# 		      [1,0,1,0,1],
# 		      [1,0,0,0,1],
# 		      [1,1,1,1,1]]
# 		Day14.convertToMaps(sample) 
# 		|> Day14.fGWrap(0,0,0,4)
# 		|> Day14.reduceToArray
# 		|> IO.inspect
# 		|> Day14.countGroups
# 		|> IO.inspect
