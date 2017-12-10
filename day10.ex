
require IEx;
defmodule Day10 do
	@sample [3,4,1,5]
	@input [183,0,31,146,254,240,223,150,2,206,161,1,255,232,199,88]
	def part1() do
		samp = Enum.to_list(0..255)
		twist(samp,0,@input,0,Enum.count(samp)) |> IO.inspect
	end

	def twist(list,index,[len|tail],skip,list_count) when len == list_count do
		newList = Enum.reverse(list) |> rrotate(index + 1)
	  IO.inspect({"step#{skip}",newList})

		IEx.pry
		twist(newList,findNextIndex(len + index + skip,list_count),tail,skip+1,list_count)
	end
	def twist(list,index,[len|tail],skip,list_count) when (index + len) > (list_count - 1) do
		# made up of rev + norm + rev
		last = Enum.take(list,list_count - (len + index))
		first = Enum.take(list,len - Enum.count(last))
		takeValue = list_count - Enum.count(last++first)
		mid = Enum.slice(list,Enum.count(first),takeValue)
		rev = Enum.reverse(last ++ first)
		newLast = Enum.take(rev,Enum.count(first))
		newFirst = Enum.take(rev,Enum.count(last) * -1)

		IEx.pry
	  IO.inspect({"step#{skip}",newFirst++mid++newLast})
		twist(newFirst++mid++newLast,findNextIndex(len + index + skip,list_count),tail,skip+1,list_count)
	end
	def twist(list,index,[len|tail],skip,list_count) when (index + len) <= (list_count - 1) do
		IEx.pry
	  
		twist(Enum.reverse_slice(list,index,len),findNextIndex((len + index + skip),list_count),tail,skip+1,list_count)
	end
	def twist(list,_,[],_,_) do
	 Enum.at(list,0) * Enum.at(list,1)
	end

	def rrotate(list,number), do: lrotate(list,(Enum.count(list) - number))
	def lrotate(list, 0), do: list
  def lrotate([head|list], number), do: lrotate(list ++ [head], number - 1)
	def lrotate(list, number), do: list |> Enum.reverse |> lrotate(number) |> Enum.reverse

	def findNextIndex(nextIndexGuess,total) when nextIndexGuess > total do
			findNextIndex((nextIndexGuess - total),total)
	end
	def findNextIndex(nextIndexGuess,total) do
			nextIndexGuess
	end
	
end
	Day10.part1()
