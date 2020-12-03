defmodule AdventOfCode.Year2020.Day3.ChallengeTest do
  use ExUnit.Case

  alias AdventOfCode.Year2020.Day3.Challenge

  describe "first part" do
    setup do
      %{valid_right_steps: 3, valid_down_steps: 1}
    end

    test "when valid example", context do
      expected = 7

      assert Challenge.traverse_local_geology(
               "example",
               context.valid_right_steps,
               context.valid_down_steps
             ) == expected
    end

    test "when valid input", context do
      expected = 262

      assert Challenge.traverse_local_geology(
               "input",
               context.valid_right_steps,
               context.valid_down_steps
             ) == expected
    end
  end

  describe "second part" do
    setup do
      %{valid_params: [{1, 1}, {3, 1}, {5, 1}, {7, 1}, {1, 2}]}
    end

    test "when valid example", context do
      expected = 336

      assert Challenge.traverse_local_geology_multiple_slopes("example", context.valid_params) ==
               expected
    end

    test "when valid input", context do
      expected = 2698900776
      assert Challenge.traverse_local_geology_multiple_slopes("input", context.valid_params) ==
        expected
    end
  end
end
