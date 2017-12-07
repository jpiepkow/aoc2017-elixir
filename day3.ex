Stream.iterate(0, &(&1+1))
|> Stream.map(fn n -> {n, (2*n+1)*(2*n+1)} end)
|>