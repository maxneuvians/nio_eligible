defmodule NioEligible do

  defdelegate coverage(params), to: NioEligible.API.Coverage, as: :get

  defdelegate payers, to: NioEligible.API.Payers, as: :get

end
