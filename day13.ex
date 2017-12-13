
defmodule Day13 do
	@input """
0: 4
1: 2
2: 3
4: 4
6: 8
8: 5
10: 6
12: 6
14: 10
16: 8
18: 6
20: 9
22: 8
24: 6
26: 8
28: 8
30: 12
32: 12
34: 12
36: 12
38: 10
40: 12
42: 12
44: 14
46: 8
48: 14
50: 12
52: 14
54: 14
58: 14
60: 12
62: 14
64: 14
66: 12
68: 12
72: 14
74: 18
76: 17
86: 14
88: 20
92: 14
94: 14
96: 18
98: 18
"""
@sample """
0: 3
1: 2
4: 4
6: 4
"""
	def part1() do
		@input |> parseInput |> runDelay(0) |> IO.inspect
		@input |> parseInput |> findFreeRun(0,100) |> IO.inspect
	end
	def findFreeRun(_,count,0), do: count - 1
	def findFreeRun(input,count,_), do: findFreeRun(input,count + 1,runDelayShortCircuit(input,count))

	def runDelay(input,delay) do 
		input |> 
		Enum.reduce(0,fn({x,y},sum) -> 
			case rem(delay + x, 2 * (y - 1)) == 0 do 
				true -> sum + (x * y) 
				false -> sum 
			end 
		end) 
	end

	def runDelayShortCircuit(input,delay) do 
		input |> 
		Enum.reduce_while(0,fn({x,y},sum) -> 
			case rem(delay + x, 2 * (y - 1)) == 0 do 
				true -> {:halt,1}
				false -> {:cont,sum}
			end 
		end) 
	end

	def parseInput(str) do
		str |> String.split("\n", trim: true)	 |> Enum.map(fn(x) -> 
		{String.split(x,":", trim: true) |> Enum.at(0) |> String.trim |>  String.to_integer,String.split(x,":", trim: true) |> Enum.at(1)|> String.trim |> String.to_integer}	
		end)
	end
end
	Day13.part1()
