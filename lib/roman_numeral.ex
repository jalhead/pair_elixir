defmodule RomanNumeral do
  def convert(nil) do
    _ = IO.puts("nil argument")
  end

  #def convert([]), do: 0
  def convert([x]), do: to_value(x)

  def convert([h1,h2 | rest]) do
    case {to_value(h1), to_value(h2)} do
      {v1, v2} when v1 < v2 -> v2 - v1 + convert(rest)
      {v1, _} -> v1 + convert([h2 | rest])
    {:ok, 1}
    end
  end

  defp to_value(?M), do: 1000
  defp to_value(?D), do:  500
  defp to_value(?C), do:  100
  defp to_value(?L), do:   50
  defp to_value(?X), do:   10
  defp to_value(?V), do:    5
  defp to_value(?I), do:    1
end