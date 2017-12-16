
defmodule Day16 do
	require Day10
	@vals 'abcdefghijklmnop' 
	@sample "s1,x3/4,pe/b"
	def part1() do
		@sample |> parseInput |> IO.inspect
		# 'abcde' |> Enum.with_index |> spin(3) |> IO.inspect
	end
	def part2() do
	end
	def spin(list,amount) do
		Day10.rrotate(list,amount) |> stripIndex
	end
	def stripIndex(list) do
		Enum.map(list,fn({x,i}) -> x end)
	end
	def exchange(list,a,b) do
		list	
	end
	def partner(list,a,b) do
		list	
	end
	def parseInput(str) do
		String.split(str, ",", trim: true)
		|> Enum.map(fn x ->
			getArgs(x)	
		end)
	end
	def runCommands(arr,commands) do
		Enum.reduce(arr,arr,fn(x,acc) -> 
			
		end)
	end
	def getArgs(str) do
		cond do
			String.starts_with? str, "s" -> 
				{"spin",String.slice(str,1..1)}
			String.starts_with? str, "x" -> "exchange"
				args = String.slice(str,1..3) |> String.split("/", trim: true)
				{"exchange",{Enum.at(args,0),Enum.at(args,1)}}
			String.starts_with? str, "p" ->
			args = String.slice(str,1..3) |> String.split("/", trim: true)
				{"partner",{Enum.at(args,0),Enum.at(args,1)}}
		end	
	end
end
	Day16.part1()
