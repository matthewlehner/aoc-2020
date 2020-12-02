defmodule AoC.DayOne do
  def find_values do
    parse_input_file()
    |> find_numbers()
    |> multiply_values()
  end

  defp multiply_values({first, second}), do: first * second

  def parse_input_file do
    "lib/aoc/day_1_input"
    |> Path.expand()
    |> File.stream!()
    |> Stream.map(&String.trim/1)
    |> Stream.map(&String.to_integer/1)
    |> Enum.to_list()
  end

  def find_numbers([number | rest]) do
    case Enum.find(rest, &(&1 + number == 2020)) do
      value when is_number(value) -> {value, number}
      nil -> find_numbers(rest)
    end
  end
end
