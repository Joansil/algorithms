defmodule MinimumSwaps do

  def subarray(a, b, acc, list_acc) do
    case {a, b} do
      {[], []} -> {list_acc, acc}
      {a, []} -> {list_acc ++ a, acc}
      {[], b} -> {list_acc ++ b, acc}
      {a,b} when hd(a) > hd(b) -> subarray(a, tl(b), length(a) + acc, list_acc ++ [hd(b)])
      {a,b} when hd(a) <= hd(b) -> subarray(tl(a), b, acc, list_acc ++ [hd(a)])
    end
  end

  def count_sorted_swaps(a) do
    case a do
      [] -> {[], 0}
      [x] -> {[x], 0}
      [x,y] when x > y -> {[y,x], 1}
      [x,y] when x <= y -> {[x,y], 0}
      a ->
        n = length(a)
        half = div(n, 2)
        {sorted_b, x} = count_sorted_swaps(Enum.slice(a, (0 .. half-1)))
        {sorted_c, y} = count_sorted_swaps(Enum.slice(a, half..n-1))
        {sorted_a, z} = subarray(sorted_b, sorted_c, 0, [])
        {sorted_a, x + y + z}
    end
  end

end
