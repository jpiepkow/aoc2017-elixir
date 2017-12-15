#Part 1
#While this is very space-efficient (no squares are skipped),
#requested data must be carried back to square 1
#(the location of the only access port for this memory system) by programs that can only move up, down, left, or right.
#They always take the shortest path: the Manhattan Distance between the location of the data and square 1.
#Part 2

defmodule Day3 do
	@input 325489 
	def part1() do
		#Get the low and high perfect squares nearest to input
		{low,high} = {Float.ceil(:math.sqrt(@input)) * Float.ceil(:math.sqrt(@input)),
		(Float.ceil(:math.sqrt(@input)) + 1) * (Float.ceil(:math.sqrt(@input)) + 1)}
		#Make sure these values are only odd perfect squares. If  not jump them to the next or last odd pS
		{newLow,newHigh} = {makeSureOdd(low,false),makeSureOdd(high,true)}
		#using the input and new low/high perfect square determine what shell your number is in.
		#ex. 5=shell1 22=shell2 26=shell3 ect ect	
		{shell,high} = findShell(@input,{newLow,newHigh})
		#using the shell and high determine the total shell size	
		shellSize = shell * 8
		#using the shell size determine the size of each size
		sideSize = round(shellSize/4)
		#using the high val - shellSize calc the low value of this shell
		newnewLow = high - shellSize
		#using the low value and sideSize calculate the 4 axis points that a number could move to
		[point1,point2,point3,point4] = points = getAxis(newnewLow,sideSize)
		#finalMovement calculates the closest axis point + shell the number is in to get total movement
		finalMovement = calculateMoveDistance(@input,points,shell)

		IO.inspect("number: #{@input}")
		IO.inspect("shell: #{shell}")
		IO.inspect("high: #{high}")
		IO.inspect("low: #{high - shellSize}")
		IO.inspect("shellSize: #{shellSize}")
		IO.inspect("sideSize: #{sideSize}")
		IO.inspect("point1: #{point1}")
		IO.inspect("point2: #{point2}")
		IO.inspect("point3: #{point3}")
		IO.inspect("point4: #{point4}")
		IO.inspect("finalMovement: #{finalMovement}")
	end

	def calculateMoveDistance(number,points,shell) do
		Enum.reduce(points,nil,fn(val,acc) ->
			if(acc == nil) do
				abs(number - val)	
			else
				if(abs(number - val) <= acc) do abs(number - val) else acc end	
			end
		end) + shell
	end

	def findShell(val,{low,high}) when val < low do
			{round(actualShell(val,low)),low}
	end
	def findShell(val,{low,high}) when val >= low do
			{round(actualShell(val,high)),high}
	end

	def getAxis(low,sideSize) do
		base = low+div(sideSize,2)
		[base,base+sideSize*1,base+sideSize*2,base+sideSize*3]	
	end

	def actualShell(val,squNumber) do
			round(findSquareShell(squNumber,false))
	end

	def findSquareShell(num,false) do
		Float.floor(:math.sqrt(num) / 2)
	end

	def makeSureOdd(num,false) when rem(round(num),2) !== 1 do
		#This one moves number down to next odd perfect square
		toSquare = round(:math.sqrt(num)) - 1
		toSquare * toSquare
	end
	def makeSureOdd(num,true)  when rem(round(num),2) !== 1  do
		#This one moves number up to next odd perfect square
		toSquare = round(:math.sqrt(num)) + 1
		toSquare * toSquare
	end
	def makeSureOdd(num,_) when rem(round(num),2) == 1   do
		round(num)
	end

end
	# Day3.part1()
