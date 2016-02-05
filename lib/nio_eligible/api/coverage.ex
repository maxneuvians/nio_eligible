defmodule NioEligible.API.Coverage do

  alias NioEligible.{API.Base, Parser}

  def get(%{payer_id: _, provider_last_name: _, provider_first_name: _, provider_npi: _} = params) do
    Base.request(:get, "coverage/all.json", params)
      |> Parser.parse_coverage
  end

  def get(_) do
    "Please enure your map includes :payer_id, :provider_last_name, :provider_first_name, and :provider_npi"
  end

end
