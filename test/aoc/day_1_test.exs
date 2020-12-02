defmodule AoC.DayOneTest do
  use ExUnit.Case, async: true

  alias AoC.DayOne

  describe "parse_input/0" do
    test "opens the day_1_input file and returns a list of integers" do
      input = DayOne.parse_input_file()
      assert is_list(input)
      assert hd(input) == 1865
    end
  end

  describe "find_numbers/1" do
    test "finds numbers that add to 2020 in a list" do
      input = [1721, 979, 366, 299, 675, 1456]

      numbers = DayOne.find_numbers(input)

      assert {299, 1721} = numbers
    end
  end
end
