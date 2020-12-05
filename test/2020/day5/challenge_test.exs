defmodule AdventOfCode.Year2020.Day5.ChallengeTest do
  use ExUnit.Case

  alias AdventOfCode.Year2020.Day5.Challenge

  describe "first part" do
    test "when valid example" do
      expected = 820

      assert Challenge.get_max_id_seat("example") == expected
    end

    test "when valid row" do
      expected = {44, ["F", "R", "L", "R"]}

      assert Challenge.decode_plane_row(["F", "B", "F", "B", "B", "F", "F", "R", "L", "R"]) ==
               expected
    end

    test "when valid seat" do
      expected = 5

      assert Challenge.decode_plane_raw_seat(["R", "L", "R"]) == expected
    end

    test "when valid seat 2" do
      expected = 4

      assert Challenge.decode_plane_raw_seat(["R", "L", "L"]) == expected
    end

    test "when valid input" do
      expected = 822

      assert Challenge.get_max_id_seat("input") == expected
    end
  end

  describe "second part" do
    test "when valid example" do
      expected = 705

      assert Challenge.get_seat("input") == expected
    end
  end
end
