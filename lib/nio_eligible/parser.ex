defmodule NioEligible.Parser do

  def parse_coverage(object), do: struct(NioEligible.Model.Coverage, object)

  def parse_payer(object), do: struct(NioEligible.Model.Payer, object)
end
