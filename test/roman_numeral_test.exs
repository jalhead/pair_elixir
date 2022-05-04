defmodule RomanNumeralTest do
  use ExUnit.Case

  test "convert i returns 1" do
    assert RomanNumeral.convert("i") == {:ok, 1}
  end

  test "convert ii returns 2" do
    assert RomanNumeral.convert("ii") == {:ok, 2}
  end
end
