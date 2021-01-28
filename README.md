# Examples of algorithms in Elixir

This repo is just to put some examples of algorithms in Elixir.
For now, just:
* Kadane's Algorithm:
  
     Kadane's algorithm scans the given array A[1..n] from left to right. In the jth step, it computes the subarray with the largest sum ending at j; this sum is        maintained in variable current_sum. Moreover, it computes the subarray with the largest sum anywhere in A[1..j], maintained in variable best_sum, and easily        obtained as the maximum of all values of current_sum seen so far, cf of the algorithm.

* A counter of swaps to order an sorted array!!!



Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/kadane](https://hexdocs.pm/kadane).

