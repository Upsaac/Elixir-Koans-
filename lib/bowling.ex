defmodule Bowling do
  def score([]), do: 0

  def score([[f,s|_l]|rest]) do
    f + s + score(rest)
  end
end
