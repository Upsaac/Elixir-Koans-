defmodule Bowling do
  def score([]), do: 0
  def score([[f, s, nil]]), do: f + s
  def score([[f, s, t]]), do: f + s + t

  def score([[10,nil],[ff|ll]|rest]), do: 10 + twoturns([[ff|ll]|rest]) + score([[ff|ll]|rest]) #strike
  def score([[f,s|_l],[ff|ll]|rest]) when f + s == 10 , do: 10 + ff + score([[ff|ll]|rest]) #spare
  def score([[f,s|_l]|rest]), do: f + s + score(rest) #frame normal

  def twoturns([[f, s, _t] | _rest]), do: f + s
  def twoturns([[10, nil], [ff | _ll] | _rest]), do: 10 + ff
  def twoturns([[f,s]|_rest])when is_integer(f) and is_integer(s), do: f + s
end
