defmodule Day6 do
	@input "4 1 15 12 0 9 9 5 5 8 7 3 14 5 12 3"
	@sample "0 2 7 0"

	def part1() do
	"#{@input}"
	|> String.split(" ", trim: true)
	|> Enum.map(fn (x) -> (String.to_integer(x))end) 
	|> Enum.with_index(0) |>Enum.map(fn {k,v}->{v,k} end) |> Map.new
	|> loopForMeM(%{},1)
	|> IO.inspect
	end
	def loopForMeM(map,configs,count) do
		newMap = map
		|> findHighBank 	
		|> redistribute
		case Enum.any?(configs, fn({x,y}) -> 
			if(Map.equal?(y,newMap)) do
				IO.inspect(Enum.count(configs) + 1 - x)
			true		
			else
			false		
			end
		end) do
				true -> count
				false -> loopForMeM(newMap,Map.put(configs,Enum.count(configs)+1,newMap),count+1)
		end
	end
	def findHighBank(map) do
		{key,val} = Enum.reduce(map,{0,0},fn({x,y},{index,val}) -> 
		if(y > val)
		 do 
		 	{x,y} 
		else 
			{index,val}	
		end
		 end)
		val = Map.get_and_update(map,key,fn(x) -> {x,0} end)
		{val,key+1}
		
	end
	def redistribute({{amount,map},key}) do
		loop(amount,key,map)
	end
	def loop(0,position,map) do
		map
	end
	def loop(amount,position,map) do
		cond do
		Enum.at(map,position) == nil -> loop(amount,0,map)
			true -> loop(amount-1,position+1,Map.put(map,position,Map.get(map,position) +1))	
		end
	end
end
# Day6.part1()
