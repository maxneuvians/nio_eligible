defmodule NioEligible.JSONTest do
  use ExUnit.Case

  alias NioEligible.JSON

  test "decode!/1 returns a map from a json string" do
    assert JSON.decode!("{\"Test\": \"Case\"}") == %{Test: "Case"}
  end

  test "decode/1 returns a tuple from a json string" do
    assert JSON.decode("{\"Test\": \"Case\"}") == {:ok, %{Test: "Case"}}
  end

  test "encode!/1 creates a json string from a map" do
    assert JSON.encode!(%{Test: "Case"}) == "{\"Test\":\"Case\"}"
  end

  test "encode/1 returns a tuple from a map" do
    assert JSON.encode(%{Test: "Case"}) == {:ok, "{\"Test\":\"Case\"}"}
  end

end
