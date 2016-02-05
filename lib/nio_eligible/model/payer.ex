defmodule NioEligible.Model.Payer do
  defstruct payer_id: nil, names: nil, created_at: nil, updated_at: nil,
    supported_endpoints: nil
  @type t :: %__MODULE__{}
end
