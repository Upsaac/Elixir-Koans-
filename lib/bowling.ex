defmodule Bowling do
  def score([]), do: 0
  def score([[f, s, t]]) when f===s and s===t, do: f + s + t
  def score([[10,nil],[ff|ll]|rest]), do: 10 + twoturns([[ff|ll]|rest]) + score([[ff|ll]|rest])
  def score([[f,s|_l],[ff|ll]|rest]) when f + s == 10 , do: f + s + ff + score([[ff|ll]|rest])
  def score([[f,s|_l]|rest]), do: f + s + score(rest)

  def twoturns([[10,nil],[ff|_ll]|_rest]), do: 10 + ff
  def twoturns([[f,s]|_rest])when is_integer(f) and is_integer(s), do: f + s
end
