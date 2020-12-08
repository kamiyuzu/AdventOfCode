defmodule AdventOfCode.Year2020.Day8.ChallengeTest do
  use ExUnit.Case

  alias AdventOfCode.Year2020.Day8.Challenge

  describe "first part" do
    test "when valid example" do
      expected = 5

      assert Challenge.boot_console("example") == expected
    end

    test "when valid input" do
      expected = 1949

      assert Challenge.boot_console("input") == expected
    end
  end

  describe "second part" do
    test "when valid example" do
      expected = 8

      assert Challenge.repair_boot_console("example_2") == expected
    end

    test "when valid input" do
      expected = 2092

      assert Challenge.repair_boot_console("input") == expected
    end
  end
end
