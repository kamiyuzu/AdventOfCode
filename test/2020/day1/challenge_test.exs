defmodule AdventOfCode.Year2020.Day1.ChallengeTest do
  use ExUnit.Case

  alias AdventOfCode.Year2020.Day1.Challenge

  describe "first part" do
    setup do
      example_valid_sum = 2020
      %{example_valid_sum: example_valid_sum}
    end

    test "when valid example", context do
      expected = {1721, 299, 514_579}

      assert Challenge.get_pair_summing_given_number("example", context.example_valid_sum) ==
               expected
    end

    test "when invalid example", context do
      expected = {:error, :sum_pair_not_found}

      assert Challenge.get_pair_summing_given_number("example_error", context.example_valid_sum) ==
               expected
    end

    test "when valid input", context do
      expected = {1224, 796, 974_304}

      assert Challenge.get_pair_summing_given_number("input", context.example_valid_sum) ==
               expected
    end
  end

  describe "second part" do
    setup do
      example_valid_sum = 2020
      %{example_valid_sum: example_valid_sum}
    end

    test "when valid input", context do
      expected = {332, 858, 830, 236_430_480}

      assert Challenge.get_third_summing_given_number("input", context.example_valid_sum) ==
               expected
    end
  end
end
