defmodule Week_2.Day_1 do

  def recursive_sum_example_1([]) do
    0
  end

  def recursive_sum_example_1(numbers) do
    list = Enum.to_list(numbers)
    List.first(list) + List.delete(list, List.first(list)) |> recursive_sum_example_1
  end

  def recursive_sum_example_2(numbers) do
    Enum.to_list(numbers)
    |> List.foldl(0, fn (x, acc) -> x + acc end)
  end

  def sum(list) do

  end

  def get_words(text) do
    # List.flatten(Regex.scan(~r/\w+/, text))
    Regex.scan(~r/\w+/, text) |> List.flatten
  end

  def map_get_words(list) do
    Enum.map(list, &get_words/1)
  end

end
