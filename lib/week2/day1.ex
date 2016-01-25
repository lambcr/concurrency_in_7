defmodule Week_2.Day_1 do

  def recursive_sum_example_1([]) do
    0
  end

  def recursive_sum_example_1(numbers_range) do
    list = Enum.to_list(numbers_range)
    List.first(list) + recursive_sum_example_1(List.delete(list, List.first(list)))
  end

  def reduce_sum(numbers_range) do
    Enum.to_list(numbers_range) |> List.foldl(0, fn (x, acc) -> x + acc end)
  end

  def get_words(text) do
    # List.flatten(Regex.scan(~r/\w+/, text))
    Regex.scan(~r/\w+/, text) |> List.flatten
  end

  def map_get_words(list) do
    Enum.map(list, &get_words/1)
  end

end
