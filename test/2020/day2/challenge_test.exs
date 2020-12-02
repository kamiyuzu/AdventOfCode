defmodule AdventOfCode.Year2020.Day2.ChallengeTest do
  use ExUnit.Case

  alias AdventOfCode.Year2020.Day2.Challenge

  describe "first part" do
    test "when valid example" do
      expected = 2
      assert Challenge.count_valid_passwords("example") == expected
    end

    test "when valid input" do
      expected = 622
      assert Challenge.count_valid_passwords("input") == expected
    end
  end

  describe "second part" do
    test "when valid example" do
      expected = 1
      assert Challenge.count_valid_passwords_second_part("example") == expected
    end

    test "when valid input" do
      expected = 263
      assert Challenge.count_valid_passwords_second_part("input") == expected
    end
  end
end
