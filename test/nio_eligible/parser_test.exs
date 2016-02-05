defmodule NioEligible.ParserTest do
  use ExUnit.Case

  alias NioEligible.Parser

  test "parse_coverage/1 creates a new Activity struct from a map" do
    assert Parser.parse_coverage(%{}).__struct__ == NioEligible.Model.Coverage
  end

  test "parse_payer/1 creates a new Activity struct from a map" do
    assert Parser.parse_payer(%{}).__struct__ == NioEligible.Model.Payer
  end

end
