defmodule Day6 do
	@input "s,sw,s,ne,s,se,s,s,s,se,se,se,se,ne,ne,n,ne,ne,ne,ne,ne,s,ne,ne,ne,ne,n,n,n,n,n,n,se,n,n,n,se,s,ne,n,n,nw,n,n,n,nw,n,s,n,n,n,n,s,s,nw,se,nw,s,n,nw,nw,nw,nw,ne,sw,nw,nw,nw,n,se,nw,nw,n,s,n,sw,sw,nw,sw,nw,nw,nw,se,ne,sw,n,sw,sw,sw,n,sw,sw,sw,ne,sw,sw,sw,sw,sw,sw,sw,sw,sw,sw,se,nw,sw,sw,s,sw,s,s,s,s,sw,sw,sw,se,s,sw,s,n,sw,ne,s,s,n,nw,s,s,s,s,s,s,se,s,sw,s,sw,sw,s,s,s,s,s,s,s,nw,s,se,se,s,se,s,s,s,se,n,nw,se,s,se,s,s,n,se,ne,s,s,s,s,s,s,ne,se,s,nw,se,s,s,nw,s,s,se,s,s,se,se,se,se,se,s,se,se,se,s,s,se,se,s,se,se,se,se,se,s,se,se,s,se,se,s,s,se,s,se,se,s,se,n,s,sw,se,se,se,se,se,ne,se,se,sw,nw,ne,se,se,ne,se,se,ne,ne,se,ne,se,se,ne,se,s,se,ne,se,se,ne,n,se,se,sw,ne,se,se,se,ne,se,ne,nw,ne,nw,se,ne,se,se,se,se,se,nw,se,ne,s,nw,se,ne,ne,ne,ne,n,se,s,nw,ne,se,ne,se,ne,ne,ne,ne,ne,ne,ne,nw,ne,ne,ne,ne,ne,n,se,sw,ne,se,se,ne,s,se,ne,ne,ne,ne,ne,ne,ne,s,ne,ne,n,ne,ne,ne,ne,ne,ne,ne,ne,sw,ne,n,ne,n,ne,ne,sw,n,ne,ne,ne,s,ne,ne,ne,ne,ne,ne,ne,n,ne,ne,n,sw,s,ne,n,ne,ne,nw,ne,ne,se,n,n,ne,n,ne,ne,ne,ne,n,nw,ne,ne,ne,ne,ne,n,ne,n,n,ne,sw,n,ne,ne,ne,n,n,n,sw,n,n,se,ne,n,ne,n,sw,n,n,ne,n,ne,n,n,n,ne,ne,nw,nw,ne,nw,s,se,n,n,n,n,n,ne,n,nw,n,n,sw,sw,se,se,ne,n,se,nw,sw,ne,n,nw,ne,n,n,n,se,se,ne,s,n,nw,n,se,n,ne,ne,se,ne,n,n,sw,ne,ne,n,n,n,n,n,se,sw,n,n,n,n,n,nw,n,n,n,n,s,n,sw,n,n,n,n,n,nw,sw,n,n,n,n,n,n,ne,n,ne,s,n,n,n,n,n,n,se,n,n,n,se,n,n,n,se,s,n,n,n,nw,n,n,n,n,n,nw,sw,n,n,n,n,n,n,nw,n,n,nw,n,nw,n,n,nw,se,n,sw,n,nw,nw,s,se,nw,nw,nw,nw,nw,sw,se,nw,n,nw,n,nw,n,nw,nw,n,nw,n,s,nw,s,n,nw,n,n,nw,n,n,nw,n,sw,n,nw,nw,n,nw,n,n,n,nw,n,nw,s,n,nw,n,sw,nw,n,nw,se,ne,nw,n,nw,n,nw,se,n,n,nw,se,nw,nw,n,s,n,n,nw,nw,sw,nw,nw,ne,nw,nw,n,nw,nw,nw,nw,nw,nw,n,n,nw,nw,nw,nw,ne,sw,nw,n,s,nw,nw,n,n,sw,nw,n,nw,s,s,n,n,nw,nw,nw,s,nw,nw,nw,s,nw,nw,nw,n,nw,n,nw,nw,nw,nw,nw,nw,ne,nw,se,nw,se,nw,nw,n,nw,nw,ne,nw,nw,se,sw,sw,s,nw,nw,nw,nw,nw,nw,nw,nw,nw,sw,nw,nw,nw,sw,nw,nw,s,nw,nw,nw,nw,ne,nw,nw,ne,s,nw,nw,nw,sw,nw,n,ne,nw,nw,sw,nw,nw,ne,nw,sw,sw,nw,nw,ne,sw,se,nw,nw,nw,n,nw,nw,sw,nw,s,sw,sw,nw,nw,nw,nw,nw,n,nw,nw,ne,sw,sw,nw,sw,nw,se,sw,nw,nw,nw,nw,nw,sw,nw,sw,nw,nw,sw,sw,nw,nw,nw,sw,nw,sw,sw,sw,ne,nw,nw,n,nw,sw,n,nw,ne,nw,s,nw,nw,sw,nw,n,nw,sw,nw,nw,sw,n,nw,sw,ne,sw,s,sw,sw,sw,sw,sw,nw,nw,nw,nw,se,sw,nw,sw,nw,sw,nw,nw,nw,sw,ne,nw,nw,nw,sw,nw,nw,ne,se,sw,nw,nw,nw,sw,sw,sw,nw,sw,sw,nw,sw,nw,sw,nw,nw,nw,nw,nw,s,sw,nw,nw,se,n,se,se,sw,nw,nw,nw,sw,nw,ne,nw,nw,sw,sw,n,nw,s,sw,sw,s,nw,sw,sw,nw,nw,sw,sw,nw,nw,nw,sw,ne,sw,se,ne,sw,nw,nw,sw,ne,sw,sw,sw,sw,se,sw,sw,sw,nw,sw,sw,nw,nw,sw,sw,sw,sw,se,sw,nw,sw,sw,n,sw,sw,nw,sw,sw,se,se,sw,sw,sw,sw,sw,sw,sw,sw,se,sw,sw,sw,s,sw,sw,se,sw,sw,sw,sw,sw,sw,sw,nw,sw,sw,sw,sw,sw,se,sw,sw,n,nw,sw,sw,sw,sw,s,sw,sw,sw,se,se,n,ne,sw,sw,sw,sw,sw,se,sw,sw,sw,sw,sw,ne,ne,s,sw,sw,n,nw,sw,se,sw,sw,sw,sw,sw,sw,sw,sw,sw,nw,sw,n,sw,nw,sw,s,sw,sw,sw,sw,sw,s,sw,sw,sw,sw,sw,sw,sw,sw,sw,s,sw,sw,nw,s,s,se,sw,sw,sw,sw,n,n,sw,s,s,sw,se,s,sw,sw,sw,n,n,sw,sw,nw,ne,nw,nw,s,sw,s,s,sw,sw,sw,se,sw,s,sw,sw,sw,s,sw,s,ne,sw,sw,s,sw,sw,sw,sw,ne,s,s,s,n,s,se,sw,sw,s,sw,sw,s,s,sw,nw,sw,sw,se,ne,s,s,sw,sw,ne,sw,sw,se,sw,s,sw,sw,sw,sw,s,n,sw,ne,sw,sw,s,sw,sw,sw,sw,se,s,s,sw,s,s,sw,sw,n,s,sw,s,sw,ne,s,sw,sw,s,sw,sw,s,s,sw,sw,sw,s,sw,se,s,s,sw,s,s,se,sw,s,s,sw,s,sw,sw,sw,s,s,s,s,ne,s,sw,sw,nw,n,sw,sw,sw,s,sw,sw,sw,n,s,se,s,sw,s,s,sw,ne,sw,s,s,nw,sw,s,n,nw,sw,sw,s,sw,s,sw,s,s,s,s,s,sw,sw,s,s,sw,sw,se,s,sw,se,sw,s,se,n,s,se,s,s,sw,s,sw,s,ne,sw,s,ne,s,sw,sw,s,sw,s,s,s,sw,ne,s,se,s,nw,s,s,sw,s,s,ne,sw,s,s,sw,sw,s,se,s,sw,sw,sw,sw,s,s,sw,nw,n,n,n,sw,s,sw,se,s,s,s,s,sw,ne,sw,s,sw,nw,s,s,sw,s,s,s,nw,s,sw,s,s,s,s,s,s,s,s,s,s,se,se,se,s,s,sw,s,s,n,s,ne,s,nw,se,s,s,nw,nw,n,s,s,s,sw,se,s,s,s,s,n,s,s,s,s,s,sw,s,s,s,s,s,s,s,s,ne,s,nw,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,nw,s,s,s,s,s,nw,s,s,s,sw,s,s,s,n,sw,s,s,s,s,s,se,s,s,s,s,s,s,s,s,sw,s,s,s,se,s,n,s,nw,s,s,n,sw,s,se,s,se,s,sw,n,s,s,s,s,s,s,s,s,n,s,s,s,s,s,se,s,nw,se,se,s,s,se,s,se,s,s,s,s,s,s,s,se,s,s,s,n,se,nw,s,se,s,s,s,s,nw,se,s,s,s,se,se,s,s,nw,s,s,n,s,s,se,n,se,s,s,se,s,ne,s,s,s,s,s,s,se,s,s,s,se,s,se,s,s,ne,s,s,s,s,s,s,s,s,se,s,s,se,s,se,s,s,s,s,se,s,se,s,se,n,s,se,se,s,s,s,s,s,s,s,se,ne,s,s,s,se,s,s,se,se,s,se,se,n,ne,s,se,se,s,se,se,se,se,se,ne,s,se,s,se,sw,sw,n,se,s,s,se,se,s,se,nw,s,s,s,se,se,s,s,s,s,se,s,s,se,s,s,se,s,se,se,s,se,s,se,se,nw,s,ne,se,se,s,se,ne,se,ne,se,s,nw,se,se,se,s,se,s,s,s,se,ne,se,se,se,se,s,s,se,se,se,se,s,se,n,nw,s,n,s,se,se,se,se,s,nw,s,s,s,se,n,s,se,nw,s,s,ne,se,se,se,s,s,sw,s,s,s,s,nw,sw,se,se,s,se,nw,s,s,se,s,n,s,s,se,s,ne,s,s,se,se,s,se,se,sw,se,s,s,s,se,se,ne,se,se,s,se,nw,s,se,n,se,se,s,se,se,s,se,ne,nw,s,s,se,se,sw,s,n,s,s,se,s,se,se,s,sw,se,s,ne,s,se,se,s,se,se,s,se,nw,se,s,se,se,s,s,se,s,nw,se,n,n,se,sw,n,n,se,se,s,s,se,se,se,n,se,nw,se,s,se,s,s,se,ne,s,se,se,nw,se,s,sw,nw,s,ne,se,se,nw,se,s,s,se,se,s,ne,s,se,s,se,sw,ne,sw,s,s,s,n,se,se,se,se,se,se,nw,ne,se,se,se,sw,se,s,se,se,nw,se,se,nw,nw,se,se,se,se,se,s,se,nw,nw,se,se,se,se,se,se,se,se,se,se,sw,n,nw,se,se,nw,n,se,se,se,s,se,sw,s,se,se,se,sw,se,nw,n,s,se,n,n,nw,se,se,se,nw,se,se,se,n,se,se,se,ne,se,sw,s,se,se,se,se,se,se,se,se,se,se,n,se,se,se,n,s,s,n,se,se,se,se,se,se,se,se,s,n,se,se,se,se,se,sw,se,se,se,se,n,se,se,se,sw,se,ne,se,se,sw,se,se,se,n,sw,se,sw,se,ne,se,se,se,se,se,se,se,se,ne,se,sw,se,se,se,se,se,se,se,nw,ne,se,se,se,s,se,se,se,se,se,se,s,se,nw,nw,se,nw,se,nw,se,se,se,se,se,se,se,se,se,s,se,s,se,se,se,se,se,se,se,nw,se,sw,se,se,n,se,se,se,s,se,se,se,se,se,se,se,s,ne,se,se,ne,se,se,se,ne,se,se,se,se,se,se,se,se,se,se,sw,se,ne,ne,se,se,se,se,se,se,nw,se,se,se,se,se,nw,se,sw,ne,se,se,se,se,se,se,se,ne,se,se,se,se,ne,s,se,se,se,se,se,se,nw,se,se,ne,se,se,se,se,se,ne,s,se,ne,se,se,se,se,se,se,se,ne,nw,ne,se,se,se,se,se,se,nw,se,se,nw,se,se,n,se,se,ne,se,se,se,se,se,se,se,se,nw,ne,se,se,se,se,ne,se,se,ne,se,ne,se,n,se,se,se,se,s,se,se,se,nw,ne,se,se,se,ne,se,ne,se,n,ne,s,sw,s,se,ne,s,se,s,ne,se,n,se,se,n,se,se,ne,ne,se,se,se,s,ne,se,se,ne,se,se,se,ne,ne,se,se,se,ne,se,se,se,se,ne,ne,ne,se,ne,se,n,ne,se,se,sw,se,se,se,ne,se,s,se,se,se,ne,se,se,se,se,se,n,ne,s,se,se,se,se,s,ne,se,ne,se,se,n,ne,ne,ne,se,se,se,se,ne,se,se,ne,se,s,se,se,s,ne,ne,se,se,se,se,ne,ne,se,ne,se,se,sw,ne,se,ne,ne,se,s,ne,n,ne,se,ne,se,se,se,se,se,se,se,ne,ne,ne,se,ne,se,ne,se,se,se,se,ne,ne,ne,ne,se,ne,ne,se,ne,sw,ne,ne,ne,se,se,nw,ne,se,se,ne,ne,se,n,sw,ne,se,ne,ne,ne,ne,se,nw,nw,se,ne,ne,se,sw,ne,s,ne,se,ne,se,ne,se,se,ne,ne,se,se,sw,n,n,ne,se,se,n,n,ne,se,se,se,n,se,n,se,ne,se,nw,se,ne,s,se,ne,se,se,se,se,se,se,se,se,se,se,ne,ne,sw,ne,se,ne,se,ne,ne,se,n,se,ne,ne,se,se,ne,ne,ne,ne,se,se,ne,nw,se,ne,se,sw,s,se,nw,se,se,se,se,se,ne,ne,nw,se,se,se,se,sw,ne,ne,se,s,se,ne,sw,se,sw,ne,sw,ne,ne,ne,s,se,ne,ne,ne,n,ne,nw,se,ne,ne,se,se,ne,n,n,sw,ne,se,se,ne,sw,s,ne,se,ne,ne,ne,se,sw,ne,se,s,ne,ne,n,ne,ne,se,nw,ne,n,ne,ne,se,ne,ne,nw,s,sw,nw,se,sw,s,ne,ne,s,s,ne,ne,sw,sw,se,ne,ne,ne,ne,se,ne,ne,sw,ne,sw,ne,ne,se,se,s,se,ne,s,ne,ne,ne,ne,ne,ne,ne,s,se,se,sw,nw,n,se,se,ne,ne,ne,ne,sw,ne,ne,ne,se,se,s,nw,nw,n,se,ne,s,ne,ne,ne,ne,n,se,ne,se,ne,ne,ne,se,ne,sw,ne,se,nw,ne,n,sw,ne,sw,ne,s,ne,ne,nw,sw,ne,ne,ne,s,n,se,ne,ne,sw,nw,ne,ne,ne,ne,ne,ne,ne,se,ne,ne,sw,ne,se,ne,n,ne,se,se,sw,s,se,ne,se,ne,ne,se,ne,ne,ne,s,nw,ne,ne,ne,se,ne,se,ne,ne,ne,nw,se,ne,ne,nw,se,ne,ne,nw,se,ne,ne,nw,se,ne,n,ne,ne,ne,ne,s,ne,se,se,se,ne,n,ne,ne,ne,sw,ne,ne,ne,ne,ne,ne,nw,ne,ne,ne,ne,ne,sw,ne,se,se,ne,ne,n,ne,ne,s,ne,ne,ne,ne,ne,nw,ne,sw,s,ne,ne,ne,ne,ne,n,ne,ne,ne,ne,ne,ne,n,ne,ne,ne,ne,ne,ne,nw,se,ne,se,ne,ne,se,se,nw,sw,ne,ne,ne,ne,ne,ne,ne,ne,ne,n,ne,ne,ne,s,n,ne,ne,ne,ne,ne,ne,sw,ne,ne,ne,ne,ne,se,ne,ne,ne,se,ne,nw,ne,ne,ne,nw,ne,ne,ne,ne,n,ne,sw,ne,ne,se,ne,n,ne,ne,ne,ne,se,ne,ne,sw,nw,n,ne,ne,nw,ne,ne,ne,ne,ne,ne,ne,ne,nw,ne,n,sw,ne,ne,ne,n,se,ne,ne,ne,ne,ne,ne,se,ne,n,ne,se,ne,n,n,ne,ne,ne,ne,ne,se,ne,ne,ne,nw,sw,ne,ne,ne,ne,ne,ne,ne,ne,ne,ne,ne,ne,ne,se,n,s,ne,ne,sw,ne,ne,ne,se,ne,ne,ne,se,ne,se,s,ne,ne,ne,ne,n,n,nw,ne,ne,ne,ne,ne,ne,ne,ne,sw,ne,ne,s,n,ne,n,ne,ne,ne,ne,ne,ne,n,ne,ne,ne,sw,n,ne,n,ne,ne,sw,ne,ne,ne,n,ne,ne,n,ne,ne,ne,ne,ne,s,ne,n,ne,ne,ne,ne,n,n,ne,ne,ne,ne,ne,n,se,ne,n,n,ne,s,ne,ne,ne,ne,ne,ne,ne,s,ne,nw,s,ne,n,ne,n,n,n,ne,ne,ne,ne,n,ne,ne,n,ne,ne,n,ne,ne,n,ne,n,n,ne,ne,n,se,se,ne,n,ne,n,s,n,ne,nw,ne,ne,ne,ne,ne,ne,ne,ne,s,ne,n,n,n,ne,ne,ne,ne,ne,n,n,ne,n,ne,n,n,n,ne,ne,ne,ne,ne,ne,s,n,n,sw,n,n,ne,ne,ne,ne,n,ne,ne,n,ne,n,ne,ne,n,nw,ne,n,ne,ne,n,ne,ne,ne,n,n,ne,ne,ne,ne,n,ne,ne,nw,n,n,ne,ne,n,sw,n,ne,sw,s,ne,se,ne,nw,ne,n,ne,n,ne,ne,n,ne,n,ne,ne,ne,ne,ne,ne,nw,ne,nw,n,sw,n,ne,s,nw,se,ne,ne,sw,ne,sw,ne,ne,sw,ne,ne,ne,ne,n,n,ne,ne,n,ne,ne,n,sw,ne,n,ne,ne,n,n,s,sw,nw,n,ne,n,se,n,ne,ne,n,s,sw,n,ne,s,n,ne,ne,ne,se,se,ne,n,ne,n,ne,ne,ne,n,se,n,ne,ne,ne,ne,s,ne,n,n,n,n,ne,n,ne,n,ne,se,ne,sw,ne,s,n,ne,n,n,n,n,sw,n,sw,ne,n,ne,sw,ne,ne,se,ne,ne,ne,ne,n,s,n,se,ne,ne,n,n,sw,ne,ne,ne,n,ne,se,n,ne,ne,ne,ne,ne,sw,ne,ne,n,nw,ne,n,ne,n,n,n,n,ne,n,n,n,ne,ne,n,ne,ne,n,n,ne,n,ne,sw,n,ne,n,n,n,ne,ne,ne,ne,n,n,ne,ne,n,ne,se,n,n,ne,sw,n,n,ne,s,se,n,nw,sw,n,ne,ne,n,nw,ne,se,n,ne,ne,nw,ne,n,ne,ne,ne,n,n,n,s,ne,n,n,s,n,se,n,n,n,sw,ne,sw,n,n,n,ne,n,ne,n,n,nw,n,n,se,ne,n,n,n,n,n,n,ne,n,ne,n,n,n,ne,ne,n,n,ne,ne,n,s,n,n,n,n,n,ne,n,ne,sw,n,n,n,n,ne,n,ne,ne,ne,ne,n,s,n,ne,n,n,ne,s,n,ne,sw,n,ne,ne,n,ne,ne,sw,n,s,n,ne,n,ne,ne,n,ne,ne,sw,ne,ne,ne,nw,n,n,s,n,n,nw,n,sw,n,n,n,ne,sw,ne,ne,n,n,n,sw,n,n,n,sw,ne,s,s,n,ne,ne,n,n,se,n,ne,nw,s,ne,ne,n,n,n,n,n,n,n,sw,se,n,ne,n,ne,n,ne,nw,ne,n,n,n,n,n,s,n,n,n,ne,ne,n,sw,ne,nw,ne,n,n,n,sw,s,ne,ne,ne,ne,s,n,n,n,n,n,nw,ne,sw,n,ne,ne,ne,n,n,ne,sw,n,ne,n,n,sw,n,ne,n,se,n,n,n,ne,n,sw,n,n,n,n,n,n,n,ne,nw,n,s,n,se,ne,se,n,n,n,n,sw,n,n,n,ne,n,ne,ne,n,se,ne,n,ne,n,n,n,s,n,n,ne,n,ne,n,n,n,se,ne,ne,ne,ne,n,ne,ne,n,se,ne,s,n,ne,n,n,n,n,s,ne,n,se,ne,n,n,n,ne,n,n,n,n,n,n,n,n,n,n,n,n,n,n,ne,n,n,ne,ne,n,s,s,ne,n,n,ne,ne,ne,sw,sw,ne,n,nw,ne,n,n,ne,n,n,n,se,n,n,n,n,ne,n,n,n,se,n,nw,n,ne,n,sw,n,ne,ne,s,n,s,nw,ne,n,ne,sw,n,n,se,nw,n,se,n,se,n,ne,n,s,n,ne,n,ne,se,n,n,n,n,n,n,nw,ne,n,ne,n,n,n,ne,se,ne,ne,n,n,n,n,se,n,n,n,ne,n,ne,n,sw,n,n,n,n,sw,n,n,se,n,n,sw,n,n,n,se,n,n,n,ne,s,n,ne,ne,n,sw,n,n,n,n,n,ne,n,ne,n,n,n,n,ne,s,n,n,ne,sw,n,ne,n,s,n,ne,nw,s,ne,s,ne,sw,n,n,ne,n,ne,n,n,n,n,n,n,n,n,n,sw,n,s,n,n,n,sw,n,n,n,sw,n,n,ne,n,n,ne,n,n,se,n,n,n,n,n,n,n,se,nw,n,n,n,se,n,n,ne,nw,n,ne,n,n,n,n,n,n,n,ne,sw,n,n,ne,n,n,n,n,n,n,n,n,s,s,ne,n,n,n,ne,n,ne,n,ne,ne,n,sw,n,s,n,sw,sw,sw,n,nw,n,n,n,ne,n,n,n,n,nw,nw,n,ne,n,n,n,n,n,n,n,n,n,s,n,n,n,s,n,ne,n,ne,n,nw,n,n,nw,n,ne,sw,n,n,n,n,n,n,n,nw,n,n,se,n,n,se,n,n,n,n,n,nw,n,s,n,n,n,n,n,nw,n,n,s,n,n,n,n,ne,n,nw,n,n,n,n,n,n,nw,n,n,n,n,n,nw,n,n,n,n,n,sw,nw,n,n,n,n,n,nw,s,n,n,n,sw,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,se,nw,n,n,n,nw,n,n,n,ne,n,n,n,se,n,n,n,n,se,n,n,nw,nw,n,n,sw,n,nw,n,n,n,n,n,nw,n,n,n,n,nw,n,n,sw,ne,se,nw,n,s,n,n,sw,n,sw,n,n,n,nw,n,n,n,s,n,n,n,n,n,n,sw,n,nw,sw,sw,n,s,n,n,n,n,n,s,n,n,n,n,n,nw,n,sw,nw,se,n,n,n,n,ne,se,n,n,nw,n,n,n,n,n,n,se,n,n,n,s,n,se,nw,n,nw,n,nw,n,nw,n,n,n,n,ne,n,s,n,s,n,n,ne,n,n,sw,n,n,n,n,n,n,ne,nw,n,n,n,n,nw,ne,n,n,n,n,n,n,n,n,n,sw,sw,n,n,n,nw,sw,n,n,n,n,n,n,n,n,n,n,n,n,se,n,n,n,n,se,n,n,ne,n,n,ne,nw,n,n,n,nw,n,n,n,n,nw,nw,n,n,n,nw,nw,n,n,s,n,n,nw,nw,n,n,nw,n,n,nw,n,nw,se,n,nw,n,s,n,n,ne,n,sw,se,n,n,n,nw,n,n,n,ne,n,s,nw,n,ne,ne,n,n,s,n,n,s,n,n,n,nw,sw,n,nw,n,s,nw,nw,nw,nw,ne,n,n,n,n,n,n,n,nw,nw,n,n,s,n,n,nw,n,n,n,nw,n,n,se,nw,n,s,nw,n,nw,n,n,ne,n,n,n,n,n,n,n,n,n,nw,nw,se,n,n,ne,nw,n,n,n,n,n,n,nw,n,nw,n,se,n,n,n,n,s,ne,ne,nw,n,n,n,n,nw,n,nw,n,n,s,n,nw,nw,n,ne,n,n,ne,nw,sw,nw,n,s,n,nw,n,n,n,sw,n,n,n,n,s,n,n,nw,ne,n,nw,se,nw,n,s,n,n,sw,n,n,n,n,sw,nw,nw,n,n,n,n,n,n,n,n,nw,n,nw,n,n,se,ne,nw,se,n,sw,n,nw,sw,n,s,sw,nw,nw,n,n,nw,n,n,nw,n,n,n,n,n,n,se,nw,n,n,nw,nw,s,n,se,n,n,nw,n,nw,nw,nw,se,nw,n,n,n,ne,nw,n,sw,n,n,n,nw,nw,nw,ne,nw,nw,n,n,n,nw,ne,n,nw,nw,n,nw,se,n,n,nw,nw,n,n,n,nw,n,n,n,n,se,n,n,n,n,n,n,nw,nw,nw,n,n,n,sw,n,n,n,s,n,n,s,s,nw,nw,n,se,se,n,nw,n,n,nw,sw,s,n,nw,nw,n,sw,n,n,ne,n,sw,nw,n,n,s,nw,nw,n,s,nw,s,n,nw,nw,n,sw,nw,nw,n,n,n,nw,n,n,n,nw,n,n,n,n,n,nw,nw,s,nw,nw,n,n,se,n,n,nw,n,n,n,se,n,n,n,n,nw,ne,n,n,ne,n,n,n,n,n,nw,n,nw,se,n,nw,n,nw,n,nw,se,n,n,se,nw,n,n,n,nw,sw,n,s,n,nw,n,n,n,n,n,n,n,s,s,n,nw,se,nw,se,nw,se,n,nw,nw,n,sw,n,n,nw,sw,ne,n,nw,nw,s,s,n,n,sw,nw,se,nw,nw,sw,n,se,nw,ne,sw,nw,nw,sw,nw,n,n,n,n,n,n,nw,n,n,n,n,nw,nw,n,n,sw,n,nw,nw,n,se,se,nw,nw,n,n,n,se,nw,nw,n,nw,nw,nw,ne,n,nw,nw,n,s,se,n,n,nw,nw,n,nw,nw,n,n,nw,nw,nw,sw,se,n,n,n,s,n,nw,nw,sw,n,nw,n,n,n,s,ne,nw,nw,s,n,n,nw,n,n,s,se,n,n,n,nw,n,nw,nw,nw,nw,nw,nw,n,nw,n,sw,nw,ne,nw,nw,n,s,nw,n,nw,nw,ne,nw,ne,nw,n,nw,nw,sw,n,nw,nw,s,s,ne,sw,n,se,nw,n,nw,nw,sw,nw,n,n,n,nw,n,nw,nw,n,nw,n,s,n,s,n,n,n,n,nw,nw,n,ne,n,se,nw,nw,nw,nw,n,nw,n,nw,nw,n,n,n,se,nw,s,nw,ne,n,n,n,nw,nw,nw,nw,ne,n,n,nw,nw,ne,n,nw,nw,nw,se,nw,nw,se,nw,n,n,nw,nw,s,n,se,nw,n,n,n,nw,n,nw,nw,nw,nw,n,nw,se,se,ne,nw,n,nw,n,se,sw,n,nw,nw,nw,nw,nw,nw,nw,n,nw,se,nw,nw,nw,se,n,nw,n,nw,s,nw,nw,se,nw,ne,nw,nw,n,nw,n,nw,n,nw,se,nw,sw,nw,nw,n,nw,n,n,ne,nw,sw,nw,ne,n,nw,nw,se,nw,nw,ne,s,n,n,nw,se,nw,nw,se,n,sw,nw,nw,ne,n,nw,s,n,se,n,nw,nw,nw,nw,n,nw,s,ne,nw,nw,sw,nw,nw,s,nw,s,nw,n,n,nw,n,s,nw,nw,nw,nw,nw,n,nw,n,nw,n,nw,nw,sw,nw,nw,se,n,n,nw,nw,nw,nw,nw,s,n,n,n,n,s,n,n,nw,nw,sw,n,nw,s,sw,nw,n,nw,se,s,nw,nw,nw,s,nw,nw,se,nw,nw,n,nw,nw,n,s,nw,n,nw,nw,nw,nw,nw,sw,nw,sw,n,n,nw,n,nw,nw,nw,nw,n,n,nw,nw,n,s,nw,n,nw,nw,nw,nw,sw,nw,nw,n,ne,se,nw,n,nw,n,n,n,s,nw,n,nw,nw,nw,nw,ne,nw,n,nw,n,nw,nw,nw,n,nw,nw,nw,nw,se,nw,n,n,nw,nw,se,nw,nw,nw,n,nw,nw,s,n,nw,s,ne,nw,ne,n,n,s,n,n,nw,nw,nw,nw,nw,nw,n,n,nw,nw,nw,s,nw,ne,nw,n,n,nw,nw,nw,nw,n,se,nw,nw,n,n,n,nw,nw,nw,nw,nw,nw,n,sw,nw,nw,nw,nw,nw,n,n,nw,nw,n,n,se,nw,nw,nw,nw,nw,s,n,sw,se,nw,ne,nw,n,nw,se,s,nw,n,nw,se,sw,nw,n,se,n,nw,nw,sw,nw,se,nw,nw,nw,nw,n,nw,sw,nw,nw,nw,nw,n,n,nw,nw,nw,se,se,sw,nw,n,n,n,sw,se,ne,nw,nw,sw,nw,n,se,nw,nw,nw,nw,se,sw,nw,nw,nw,nw,n,nw,n,n,n,s,nw,nw,nw,nw,n,ne,nw,n,sw,se,sw,n,nw,nw,nw,nw,sw,nw,nw,nw,ne,nw,nw,n,sw,nw,nw,nw,sw,n,nw,nw,n,nw,n,nw,n,nw,nw,sw,sw,nw,nw,sw,se,s,nw,nw,nw,s,se,nw,nw,nw,n,nw,nw,nw,nw,sw,nw,sw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,n,nw,nw,nw,nw,nw,nw,nw,nw,n,nw,sw,nw,sw,n,n,n,s,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,s,nw,nw,nw,nw,nw,nw,n,nw,ne,nw,n,nw,n,nw,nw,nw,nw,nw,nw,nw,nw,nw,n,nw,nw,nw,sw,nw,se,nw,nw,nw,nw,nw,nw,s,nw,se,nw,nw,nw,sw,nw,ne,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,sw,nw,nw,nw,nw,nw,nw,n,nw,nw,nw,nw,nw,sw,nw,s,nw,nw,nw,nw,nw,ne,nw,nw,n,nw,nw,nw,n,nw,nw,nw,nw,n,se,nw,nw,s,nw,sw,nw,nw,n,n,nw,nw,n,nw,nw,sw,nw,nw,nw,se,nw,nw,nw,se,nw,nw,sw,nw,nw,nw,sw,nw,nw,nw,n,n,nw,nw,nw,nw,nw,n,nw,nw,nw,nw,nw,nw,nw,nw,nw,nw,sw,se,nw,nw,nw,s,s,nw,nw,nw,nw,ne,nw,nw,nw,n,nw,ne,nw,se,se,se,s,s,s,s,s,s,s,sw,s,s,s,sw,n,sw,sw,sw,se,sw,n,sw,sw,sw,nw,sw,sw,nw,nw,n,nw,nw,sw,nw,nw,nw,nw,nw,n,nw,nw,n,nw,n,n,nw,sw,s,nw,ne,n,n,n,n,n,n,n,ne,n,n,n,n,n,n,ne,n,n,ne,ne,ne,n,ne,n,n,ne,ne,n,n,ne,n,s,ne,n,ne,ne,n,ne,ne,ne,ne,s,sw,ne,ne,n,sw,ne,ne,se,se,ne,ne,se,nw,ne,ne,ne,ne,ne,se,ne,se,ne,s,n,se,ne,se,sw,ne,ne,ne,s,se,se,se,se,se,se,se,se,se,se,se,se,sw,se,ne,ne,ne,se,se,se,sw,ne,se,se,se,se,se,sw,ne,se,se,n,se,se,n,se,n,sw,se,s,s,se,sw,se,nw,s,s,se,se,se,s,ne,s,s,se,se,se,s,s,s,n,se,se,s,nw,se,n,se,se,s,s,se,s,s,s,s,s,se,s,se,se,s,s,s,s,s,s,s,se,s,s,s,sw,s,s,sw,s,sw,s,n,se,s,nw,s,s,s,s,s,s,s,nw,nw,s,s,s,nw,s,s,sw,s,s,ne,sw,s,s,s,sw,s,s,s,s,s,s,s,s,sw,n,sw,s,sw,s,n,s,se,s,s,s,s,sw,n,se,s,s,sw,sw,s,nw,sw,sw,sw,s,sw,sw,s,sw,ne,sw,s,sw,sw,nw,sw,s,sw,sw,sw,s,nw,sw,sw,s,sw,s,s,sw,sw,s,sw,sw,se,n,s,sw,sw,sw,nw,sw,sw,sw,sw,sw,se,ne,sw,se,n,sw,sw,sw,se,nw,sw,se,sw,sw,sw,sw,nw,sw,nw,nw,sw,nw,sw,sw,nw,nw,n,sw,nw,sw,s,sw,sw,sw,sw,s,sw,sw,sw,sw,nw,sw,sw,nw,ne,sw,sw,sw,n,sw,sw,se,s,sw,sw,sw,sw,nw,sw,sw,nw,sw,sw,nw,nw,nw,se,sw,nw,nw,n,sw,nw,s,nw,nw,sw,sw,sw,sw,sw,s,nw,n,se,sw,sw,sw,nw,sw,nw,nw,nw,nw,sw,ne,sw,nw,nw,nw,n,sw,sw,nw,sw,nw,nw,nw,se,nw,ne,nw,nw,nw,nw,nw,nw,nw,nw,n,s,nw,nw,nw,nw,nw,nw,nw,nw,sw,nw,nw,sw,nw,nw,nw,nw,nw,se,s,nw,ne,nw,nw,nw,n,nw,n,nw,nw,nw,n,nw,nw,n,se,nw,se,nw,nw,s,nw,nw,nw,nw,s,nw,nw,n,s,sw,s,nw,nw,nw,nw,n,nw,ne,sw,nw,nw,n,nw,nw,n,n,nw,nw,s,nw,nw,nw,s,n,nw,nw,nw,se,sw,nw,nw,n,nw,nw,nw,n,ne,nw,n,nw,nw,s,n,nw,n,nw,nw,n,nw,n,ne,se,nw,n,nw,nw,n,ne,nw,s,n,nw,n,s,n,nw,s,nw,nw,nw,nw,nw,nw,n,n,nw,nw,nw,ne,n,se,nw,n,n,n,n,nw,se,nw,n,nw,nw,n,nw,sw,n,n,n,ne,s,sw,n,nw,n,s,nw,sw,nw,nw,n,nw,n,nw,n,nw,se,n,nw,n,n,n,n,n,nw,n,s,sw,n,n,n,s,n,ne,n,nw,n,se,n,n,n,s,n,nw,n,n,n,n,n,n,se,nw,nw,n,nw,n,n,n,n,n,ne,n,n,n,nw,nw,nw,n,s,n,n,n,nw,n,nw,n,n,n,n,nw,nw,n,n,se,nw,n,n,n,se,n,s,nw,n,n,n,n,sw,ne,nw,n,n,n,n,n,n,n,n,n,n,s,n,n,se,n,sw,se,n,n,se,n,n,n,se,n,n,n,n,n,se,n,nw,n,ne,sw,s,n,n,n,n,n,n,n,n,n,n,s,n,n,ne,n,n,n,se,ne,ne,n,n,nw,n,n,n,ne,ne,n,n,n,n,ne,n,se,n,ne,n,n,s,n,n,ne,ne,n,ne,n,ne,s,n,ne,ne,n,n,sw,n,s,ne,sw,n,ne,ne,se,ne,ne,n,n,ne,s,n,n,n,s,n,n,nw,n,n,ne,n,n,n,n,ne,se,ne,ne,n,n,n,ne,ne,ne,n,n,n,nw,ne,n,n,n,n,n,ne,n,ne,n,ne,n,ne,ne,n,n,ne,n,ne,n,ne,sw,nw,ne,ne,n,ne,n,n,n,n,ne,ne,ne,ne,ne,n,n,ne,sw,ne,sw,ne,ne,ne,ne,ne,sw,n,n,ne,ne,sw,sw,ne,ne,ne,ne,n,sw,ne,ne,ne,ne,se,ne,n,n,ne,n,sw,sw,n,ne,ne,ne,ne,ne,ne,ne,s,ne,s,ne,ne,ne,ne,s,n,n,ne,ne,ne,ne,ne,ne,se,s,n,ne,nw,s,n,s,ne,s,n,nw,ne,ne,ne,se,ne,ne,se,ne,ne,n,ne,n,s,ne,ne,ne,ne,ne,ne,ne,s,ne,ne,s,ne,ne,ne,ne,sw,sw,se,sw,ne,ne,sw,se,ne,s,ne,ne,ne,ne,ne,ne,ne,s,s,s,se,ne,ne,n,ne,ne,ne,n,sw,ne,nw,nw,ne,ne,ne,sw,sw,ne,ne,ne,ne,ne,ne,ne,ne,ne,ne,ne,ne,ne,ne,ne,ne,n,s,n,ne,n,s,n,ne,ne,ne,ne,se,se,ne,se,ne,ne,ne,ne,sw,ne,ne,n,ne,se,ne,ne,ne,nw,ne,ne,ne,ne,ne,nw,ne,se,se,ne,ne,ne,ne,ne,se,ne,ne,se,ne,ne,ne,s,ne,se,ne,n,ne,ne,nw,nw,se,ne,s,se,ne,ne,ne,ne,sw,nw,se,ne,ne,ne,ne,se,se,ne,ne,ne,ne,ne,ne,ne,se,ne,n,se,ne,s,ne,se,se,ne,se,ne,ne,ne,se,nw,s,se,ne,ne,nw,se,ne,ne,ne,nw,ne,se,sw,ne,se,ne,n,se,se,nw,se,ne,ne,se,ne,se,se,se,sw,se,se,ne,n,ne,s,ne,ne,ne,ne,nw,n,sw,ne,s,ne,ne,se,s,ne,se,se,ne,ne,se,ne,n,ne,se,se,se,se,se,ne,ne,ne,se,ne,se,ne,se,se,se,se,se,ne,ne,s,ne,ne,se,se,se,se,nw,se,ne,ne,ne,ne,se,s,ne,ne,ne,nw,nw,se,ne,s,ne,se,se,ne,se,se,se,ne,se,se,se,se,ne,ne,se,ne,n,sw,se,se,ne,se,se,sw,se,s,nw,se,ne,ne,s,n,se,s,se,ne,se,se,n,se,se,ne,se,se,se,se,ne,nw,ne,nw,se,se,se,n,ne,se,se,se,se,se,n,se,se,sw,se,ne,se,nw,se,s,sw,se,se,s,ne,ne,se,se,se,se,ne,se,ne,se,ne,ne,se,se,se,se,sw,se,ne,ne,ne,se,se,ne,se,se,se,se,se,se,nw,nw,se,se,n,n,nw,ne,se,se,se,se,sw,se,se,se,se,se,se,n,se,se,se,se,se,se,se,se,s,se,se,se,ne,se,se,se,sw,se,se,se,se,se,s,se,se,se,s,s,se,se,se,se,nw,sw,n,se,se,se,se,se,se,se,se,se,se,ne,se,se,nw,se,se,s,se,se,se,se,sw,se,n,se,se,se,s,se,se,se,se,se,s,n,ne,sw,se,s,se,s,se,se,se,n,se,sw,n,se,se,se,n,se,nw,se,se,s,se,se,se,se,se,se,se,n,se,se,nw,se,se,se,se,sw,se,se,sw,se,nw,se,se,sw,se,se,se,sw,nw,se,se,sw,se,se,se,se,se,se,nw,se,se,ne,se,se,s,se,s,se,se,se,se,se,sw,s,se,se,se,s,se,se,s,se,s,se,ne,se,nw,s,s,se,s,se,se,se,s,se,se,s,se,s,se,se,se,ne,se,se,se,se,se,se,nw,s,se,ne,s,se,n,se,se,ne,se,se,se,se,nw,s,nw,n,ne,s,se,se,n,s,s,se,se,s,sw,se,se,sw,n,se,se,se,se,se,se,s,s,s,se,s,n,se,se,se,se,sw,n,se,se,s,nw,se,s,se,s,se,se,se,se,se,se,se,s,ne,s,se,ne,ne,n,se,n,s,se,se,se,ne,se,n,se,s,se,se,s,sw,s,se,s,s,s,n,s,se,se,n,ne,s,se,n,se,s,se,s,n,sw,nw,n,se,ne,se,se,s,s,s,se,s,ne,se,s,se,s,se,se,se,s,s,n,ne,se,s,s,s,se,ne,s,se,se,se,se,n,n,se,n,sw,se,se,nw,s,s,se,s,se,ne,s,ne,se,se,se,s,s,se,s,s,se,s,s,s,s,s,s,se,ne,s,se,s,s,se,ne,s,se,se,s,se,se,s,s,s,se,s,nw,sw,se,s,se,se,nw,s,s,s,se,s,s,s,s,s,s,nw,s,se,se,s,s,n,s,se,s,se,se,se,s,s,s,se,n,se,se,se,se,se,s,ne,n,ne,s,se,se,s,se,s,se,s,n,s,s,n,s,s,nw,n,s,s,ne,ne,ne,s,s,s,se,s,sw,s,s,se,s,se,se,se,s,ne,s,se,se,se,s,s,s,se,s,se,s,sw,s,s,s,n,s,s,s,se,s,s,s,s,s,se,n,s,se,se,s,s,ne,s,se,s,s,s,n,se,nw,nw,s,s,n,s,ne,s,s,nw,s,s,s,s,s,s,s,se,s,s,s,n,s,s,s,s,se,se,s,s,nw,s,ne,s,sw,s,s,s,n,s,nw,sw,s,s,s,s,s,sw,s,s,s,ne,s,se,s,s,s,s,s,s,s,s,s,nw,s,s,s,se,s,s,s,s,s,se,nw,se,nw,s,n,s,s,s,s,s,s,sw,s,s,s,s,s,s,s,n,s,s,ne,n,s,s,s,s,nw,ne,s,s,s,s,s,s,nw,s,s,ne,s,ne,s,s,s,se,s,s,s,s,s,s,s,s,s,s,s,n,nw,s,s,s,s,s,sw,s,nw,s,s,sw,s,s,s,s,s,se,s,s,s,s,s,s,s,sw,s,s,s,se,s,s,nw,s,s,s,s,s,n,s,nw,s,s,sw,n,s,n,s,s,s,s,sw,nw,se,s,s,s,nw,s,s,sw,s,s,s,s,n,s,sw,s,se,s,sw,s,s,s,sw,s,sw,s,s,s,s,s,s,sw,ne,s,s,s,n,sw,s,s,s,s,s,s,s,s,s,s,s,s,s,sw,s,s,s,s,s,sw,s,s,sw,s,s,ne,se,se,sw,n,s,s,s,s,s,s,s,s,nw,s,ne,sw,se,s,s,sw,s,s,nw,se,s,s,sw,ne,s,sw,s,se,s,s,nw,se,sw,s,s,s,s,sw,sw,se,sw,sw,sw,s,s,s,sw,s,ne,se,se,ne,s,s,s,sw,s,s,sw,sw,s,sw,s,sw,s,s,s,s,sw,s,nw,s,sw,s,s,s,s,s,sw,n,s,se,s,sw,sw,sw,s,sw,s,sw,s,s,nw,n,sw,s,s,s,s,sw,s,s,s,s,sw,s,s,sw,n,s,s,nw,sw,ne,nw,s,s,s,sw,s,n,nw,sw,s,s,s,sw,s,sw,s,s,s,sw,s,s,s,sw,s,ne,sw,ne,s,sw,s,s,s,s,s,ne,sw,se,s,sw,sw,sw,s,sw,s,s,s,s,se,s,sw,s,sw,sw,s,sw,sw,sw,s,s,s,s,n,se,s,sw,s,s,sw,s,s,s,sw,sw,sw,s,sw,s,sw,ne,ne,s,s,s,sw,s,nw,nw,se,sw,s,s,s,s,sw,s,s,sw,se,s,ne,s,n,s,sw,sw,s,sw,ne,se,sw,s,s,s,ne,sw,s,sw,s,sw,s,n,sw,sw,s,sw,sw,s,nw,ne,s,nw,sw,s,sw,sw,s,s,n,sw,sw,s,s,s,n,sw,s,s,nw,s,sw,sw,s,sw,sw,se,s,s,s,s,s,s,s,sw,nw,sw,sw,se,s,s,se,sw,s,sw,se,nw,nw,s,nw,s,sw,ne,s,s,ne,s,sw,s,s,s,sw,sw,s,se,sw,n,sw,s,sw,sw,s,sw,sw,sw,s,s,s,se,sw,s,s,s,s,s,sw,sw,s,sw,se,sw,s,sw,sw,se,sw,sw,s,sw,sw,s,s,s,s,s,s,s,s,sw,sw,sw,sw,ne,ne,ne,ne,s,nw,se,s,s,sw,s,s,s,s,s,sw,sw,sw,s,s,sw,s,s,s,sw,sw,s,s,sw,sw,sw,sw,s,sw,sw,sw,s,sw,sw,sw,ne,sw,ne,s,sw,sw,ne,sw,se,sw,sw,sw,s,s,s,sw,se,s,sw,sw,sw,nw,s,sw,se,sw,sw,s,se,sw,se,sw,s,sw,sw,sw,s,sw,sw,sw,s,se,sw,s,s,sw,sw,s,s,sw,sw,sw,s,sw,sw,s,s,s,sw,sw,sw,s,sw,s,ne,se,sw,s,sw,sw,s,sw,sw,sw,se,sw,sw,sw,sw,n,s,sw,sw,se,ne,sw,sw,sw,s,sw,sw,sw,sw,sw,n,sw,s,s,se,sw,sw,sw,sw,s,sw,sw,s,sw,s,s,s,sw,sw,nw,s,sw,sw,sw,sw,sw,n,sw,sw,sw,sw,s,sw,sw,sw,sw,ne,sw,sw,sw,s,ne,sw,sw,s,sw,sw,sw,ne,s,ne,sw,se,s,sw,sw,s,s,sw,sw,se,sw,nw,sw,sw,sw,sw,sw,n,sw,se,nw,sw,sw,sw,sw,sw,n,sw,sw,sw,s,sw,sw,sw,sw,sw,se,sw,sw,sw,sw,se,sw,sw,sw,sw,sw,s,se,sw,sw,sw,ne,sw,sw,se,sw,s,sw,sw,ne,sw,sw,sw,sw,ne,ne,sw,ne,sw,sw,sw,s,sw,sw,sw,s,s,sw,sw,sw,sw,sw,sw,sw,sw,sw,sw,sw,sw,sw,sw,sw,se,sw,sw,nw,sw,sw,sw,nw,nw,sw,sw,sw,sw,n,sw,ne,se,s,sw,sw,sw,se,ne,sw,ne,se,sw,sw,sw,sw,sw,nw,sw,sw,sw"
	@sample1 "ne,ne,ne"
	@sample2 "ne,ne,sw,sw"
	@sample3 "ne,ne,s,s"
	@sample4 "se,sw,se,sw,sw"

	def part1() do
		moves = @input |> parseInput
		{{x,y},{distance,at},steps} = getCoordinates({0,0},moves,{0,0},0)
		IO.inspect "Cords: x:#{x} y:#{y}"
		IO.inspect "Largest distance away:#{distance} at step:#{at}"
		IO.inspect("total steps:#{steps}")
		walkSelf({0,0},{x,y})
	end
	def parseInput(input), do: input |> String.split(",")
	def walkSelf(myCords,targetCords,steps \\ 0)
	
	def walkSelf(myCords,targetCords,steps) when myCords == targetCords do
		IO.inspect({myCords,steps})
		steps
	end
	def walkSelf({x,y},{targetX,targetY}, steps) do
			{direction,cords,_} = ["n","ne","nw","s","se","sw"]		
			|> Enum.map(&({&1,getCoordinates({x,y},[&1],{0,0},0)}))
			|> testDirections({x,y},{targetX,targetY})
			IO.inspect("move: #{direction}")
			walkSelf(cords,{targetX,targetY},steps + 1)
	end
	def testDirections(options,{myX,myY},{x,y}) do
		options
		|> Enum.reduce({"",{0,0},10000000},fn({moveDir,{moveX,moveY}},{direction,c,difference}) -> 
			calcluatedDif = calcDistance({moveX,moveY},{x,y})
				if  calcluatedDif <= difference do
					{moveDir,{moveX,moveY},calcluatedDif}	
				else 	
					{direction,c,difference}
				end
	end)
	end

	def calcDistance({myX,myY},{targetX,targetY}) do
		:math.pow(targetX - myX,2) + :math.pow(targetY - myY,2) |> :math.sqrt
	end
	def getCoordinates({x,y},["n" | tail],{dif,at},steps) do
		d = if calcDistance({0,0},{x,y}) > dif do
			IO.inspect({calcDistance({0,0},{x,y}),steps})
			{calcDistance({0,0},{x,y}),steps}			
		else 
			{dif,at}
		end
	 getCoordinates({x,y + 1},tail,d,steps+1)
	end
	def getCoordinates({x,y},["ne" | tail],{dif,at},steps) do
		d = if calcDistance({0,0},{x,y}) > dif do
			IO.inspect({calcDistance({0,0},{x,y}),steps})
			{calcDistance({0,0},{x,y}),steps}			
		else 
			{dif,at}
		end
	 getCoordinates({x + 0.5,y + 0.5},tail,d,steps+1)
	end
	def getCoordinates({x,y},["nw" | tail],{dif,at},steps) do
		d = if calcDistance({0,0},{x,y}) > dif do
			IO.inspect({calcDistance({0,0},{x,y}),steps})
			{calcDistance({0,0},{x,y}),steps}			
		else 
			{dif,at}
		end
	 getCoordinates({x - 0.5,y + 0.5},tail,d,steps+1)
	end
	def getCoordinates({x,y},["s" | tail],{dif,at},steps) do
		d = if calcDistance({0,0},{x,y}) > dif do
			IO.inspect({calcDistance({0,0},{x,y}),steps})
			{calcDistance({0,0},{x,y}),steps}			
		else 
			{dif,at}
		end
	 getCoordinates({x,y - 1},tail,d,steps+1)
	end
	def getCoordinates({x,y},["se" | tail],{dif,at},steps) do
		d = if calcDistance({0,0},{x,y}) > dif do
			IO.inspect({calcDistance({0,0},{x,y}),steps})
			{calcDistance({0,0},{x,y}),steps}			
		else 
			{dif,at}
		end
	 getCoordinates({x + 0.5,y - 0.5},tail,d,steps+1)
	end
	def getCoordinates({x,y},["sw" | tail],{dif,at},steps) do
		d = if calcDistance({0,0},{x,y}) > dif do
			IO.inspect({calcDistance({0,0},{x,y}),steps})
			{calcDistance({0,0},{x,y}),steps}			
		else 
			{dif,at}
		end
	 getCoordinates({x - 0.5,y - 0.5},tail,d,steps+1)
	end
	def getCoordinates(cords,[],{dif,at},steps) do 
		d = if calcDistance({0,0},cords) > dif do
			IO.inspect({calcDistance({0,0},cords),steps})
			{calcDistance({0,0},cords),steps}			
		else 
			{dif,at}
		end
		{cords,d,steps}
	end
end
Day6.part1()
