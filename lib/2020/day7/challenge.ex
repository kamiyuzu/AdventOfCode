defmodule AdventOfCode.Year2020.Day7.Challenge do
  @moduledoc """
  Impl day 7 of year 2020 advent of code
  """

  @path "test/fixtures/2020/day7/"

  @spec count_bag_from_luggage_processing(String.t(), String.t()) :: integer()
  def count_bag_from_luggage_processing(input, bag) do
    input
    |> parse_input()
    |> do_count_bag_from_luggage_processing(bag)
  end

  defp do_count_bag_from_luggage_processing(parsed_input, input_bag) do
    bag_tree = parsed_input |> parse_bag_input() |> map_bags() |> Map.drop([input_bag]) |> IO.inspect()

    _shiny_bag_final_bags = get_bag_parent_with_children_bag(bag_tree, input_bag) |> IO.inspect()

    _graph = draw_graph(bag_tree, input_bag)

  end

  defp draw_graph(bag_tree, input_bag) do
    keys = Map.keys(bag_tree)
    do_draw_graph(keys, bag_tree, input_bag)
  end

  defp do_draw_graph(keys, bag_tree, input_bag, acc \\ [])
  defp do_draw_graph([], _, _, acc), do: acc
  defp do_draw_graph([key | tail], bag_tree, input_bag, acc) do
    children = Map.get(bag_tree, key)
    sol = Enum.reduce(children, [], fn children, acc ->
      if input_bag in children do
        acc ++ [key]
      else
        do_draw_graph(tail, bag_tree, input_bag)
      end
    end)
    acc ++ sol
  end

  defp get_bag_parent_with_children_bag(bag_tree, bag) do
    Enum.reduce(bag_tree, [], fn {parent, children}, acc ->
      if Enum.member?(children, bag) do
        acc ++ [parent]
      else
        acc
      end
    end)
  end

  @fixed_inffix " bags contain "
  defp parse_bag_input(parsed_input), do: Enum.map(parsed_input, &String.split(&1, @fixed_inffix))

  defp map_bags(parsed_bag_input), do: Enum.reduce(parsed_bag_input, %{}, &(create_bag_tree(&1, &2)))

  @invalid_bag "no other bags."
  defp create_bag_tree(parsed_bag_entry, acc) do
    [bag, bags] = parsed_bag_entry

    if bags != @invalid_bag do
      inner_bag = reduce_inner_bag_items(bags)
      Map.put(acc, bag, inner_bag)
    else
      acc
    end
  end

  @inner_bag_splitters [" bag, ", " bags, ", " bags.", " bag."]
  defp reduce_inner_bag_items(bags) do
    bags
    |> String.split(@inner_bag_splitters)
    |> Enum.reject(fn raw_entry -> raw_entry == "" end)
    |> Enum.reduce([], fn parsed_bag, inner_acc ->
      <<_number_of_bags::binary-size(1)>> <> " " <> inner_bag = parsed_bag
      inner_acc ++ [inner_bag]
    end)
  end

  defp parse_input(input) do
    (@path <> input)
    |> File.read!()
    |> String.split("\n")
  end
end
