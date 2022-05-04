defmodule RomanNumeralTest do
  use ExUnit.Case

  test "convert i returns 1" do
    assert RomanNumeral.convert("i") == {:ok, 1}
  end
end
