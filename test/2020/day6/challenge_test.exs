defmodule AdventOfCode.Year2020.Day6.ChallengeTest do
  use ExUnit.Case

  alias AdventOfCode.Year2020.Day6.Challenge

  describe "first part" do
    test "when valid example" do
      expected = 11

      assert Challenge.sum_group_answers("example") == expected
    end

    test "when valid input" do
      expected = 6680

      assert Challenge.sum_group_answers("input") == expected
    end
  end

  describe "second part" do
    test "when valid example" do
      expected = 6

      assert Challenge.sum_group_everyone_answers("example_2") == expected
    end

    test "when valid input" do
      expected = 3117

      assert Challenge.sum_group_everyone_answers("input") == expected
    end
  end
end
