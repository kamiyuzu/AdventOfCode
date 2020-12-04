defmodule AdventOfCode.Year2020.Day4.ChallengeTest do
  use ExUnit.Case

  alias AdventOfCode.Year2020.Day4.Challenge

  describe "first part" do
    setup do
      %{valid_opts: :no_extra_validation}
    end

    test "when valid example", context do
      expected = 2

      assert Challenge.validate_transports("example", context.valid_opts) == expected
    end

    test "when valid input", context do
      expected = 239

      assert Challenge.validate_transports("input", context.valid_opts) == expected
    end
  end

  describe "second part" do
    setup do
      %{valid_opts: :extra_validation}
    end

    test "when valid example", context do
      expected = 4

      assert Challenge.validate_transports("example_2", context.valid_opts) == expected
    end

    test "when invalid example", context do
      expected = 0

      assert Challenge.validate_transports("invalid_example_2", context.valid_opts) == expected
    end

    test "when valid input", context do
      expected = 188
      assert Challenge.validate_transports("input", context.valid_opts) == expected
    end
  end
end
