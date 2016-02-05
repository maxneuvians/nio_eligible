defmodule NioEligible.API.Payers do

  alias NioEligible.{API.Base, Parser}

  def get do
    Base.request(:get, "payers.json")
      |> Enum.map(&Parser.parse_payer/1)
  end

end
