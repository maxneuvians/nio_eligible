defmodule NioEligible.JSON do
  @moduledoc """
  JSON encode/decode wrapper module. It's separated to isolate the code
  affected by differences between the JSON libraries.
  """

  @doc """
  Decode json string into elixir objects.
  """
  def decode!(json) do
    Poison.decode!(json, keys: :atoms)
  end

  @doc """
  Decode json string into elixir objects.
  """
  def decode(json) do
    Poison.decode(json, keys: :atoms)
  end

  @doc """
  Decode json string into elixir objects.
  """
  def encode!(json) do
    Poison.encode!(json)
  end

  @doc """
  Decode json string into elixir objects.
  """
  def encode(json) do
    Poison.encode(json)
  end
end
