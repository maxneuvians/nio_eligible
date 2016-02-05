defmodule NioEligible.Model.Coverage do
  defstruct services: nil, plan: nil, insurance: nil, eligible_id: nil,
    demographics: nil, created_at: nil
  @type t :: %__MODULE__{}
end
