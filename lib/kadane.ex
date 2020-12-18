defmodule Kadane do

  def largest_sum(arr) do
    arr_ini = Enum.with_index(arr)
      acc = {0, 0, length(arr), 0, 0}
        {_,_big,_fir,_las,_} = Enum.reduce(arr_ini, acc, fn {elm,i},
        {act,big,fir,las,act_fir} ->
          if act < 0 do
            if elm > maxx, do: {elm, elm, i, i, act_fir},
                         else: {elm, big, fir, las, act_fir}
          else
            act2 = act + elm
            if act2 > maxx, do: {act2, act2, act_fir, i, act_fir},
                          else: {act2, big,  fir, las, act_fir}
        end
      end)
      "The largest sum is = #{maxx}"
  end

end
