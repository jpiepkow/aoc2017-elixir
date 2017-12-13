defmodule Day6 do
	@input "ne,n,ne,se,se,ne,se,s,s,nw,s,s,sw,nw,ne,n,sw,sw,sw,se,se,se,ne,se,sw,sw,nw,sw,nw,sw,nw,sw,nw,n,n,nw,nw,s,s,nw,n,n,n,ne"
	@sample1 "ne,ne,ne"
	@sample2 "ne,ne,sw,sw"
	@sample3 "ne,ne,s,s"
	@sample4 "se,sw,se,sw,sw"
	@sample5 "ne,se,ne,se,ne,se"

	def part1() do
		moves = @input |> parseInput
		{x,y} = getCoordinates({0,0},moves)
		{_,furthest,dis} = moves |> Enum.with_index |> Enum.reduce({{0,0},{0,0},0},fn({x,i},{cord,f,d}) -> 
			cords = getCoordinates(cord,[x])
			c = calcDistance({0,0},cords)
			if c >= d do
			 {cords,cords,c}
		  else
			 {cords,f,d}
			end
		end)
		
		fur = walkSelf({0,0},furthest)
		stp = walkSelf({0,0},{x,y}) |> IO.inspect
		IO.inspect "Child Cords: x:#{x} y:#{y}"
		IO.inspect "Quickest path to child is #{stp} steps"
		IO.inspect "Largest distance away:#{dis} would take #{fur} steps to reach"

	end
	def parseInput(input), do: input |> String.split(",", trim: true)
	def walkSelf(myCords,targetCords,steps \\ 0)
	
	def walkSelf(myCords,targetCords,steps) when myCords == targetCords do
		steps
	end
	def walkSelf({x,y},{targetX,targetY}, steps) do
			{direction,cords,_} = ["n","ne","nw","s","se","sw"]		
			|> Enum.map(&({&1,getCoordinates({x,y},[&1])}))
			|> testDirections({x,y},{targetX,targetY})
			walkSelf(cords,{targetX,targetY},steps + 1)
	end

	def testDirections(options,{myX,myY},{x,y}) do
		options
		|> Enum.reduce({"",{0,0},10000000},fn({moveDir,{moveX,moveY}},{direction,c,difference}) -> 
			calcluatedDif = calcDistance({moveX,moveY},{x,y})
				if  calcluatedDif < difference do
					{moveDir,{moveX,moveY},calcluatedDif}	
				else 	
					{direction,c,difference}
				end
	end)
	end

	def calcDistance({myX,myY},{targetX,targetY}) do
		:math.pow(targetX - myX,2) + :math.pow(targetY - myY,2) |> :math.sqrt
	end
	
	def getCoordinates({x,y},["n" | tail]), do: getCoordinates({x,y + 2},tail)
	def getCoordinates({x,y},["ne" | tail]), do: getCoordinates({x + 1,y + 1},tail)
	def getCoordinates({x,y},["nw" | tail]), do: getCoordinates({x - 1,y + 1},tail)
	def getCoordinates({x,y},["s" | tail]), do: getCoordinates({x,y - 2},tail)
	def getCoordinates({x,y},["se" | tail]), do: getCoordinates({x + 1,y - 1},tail)
	def getCoordinates({x,y},["sw" | tail]), do: getCoordinates({x - 1,y - 1},tail)
	def getCoordinates(cords,[]), do: cords
end
Day6.part1()
