defmodule NioEligible.API.Base do

  @api_key Application.get_env(:nio_eligible, :api_key)
  @base_url "https://gds.eligibleapi.com/v1.5/"

  def request(:get, path, params \\ %{}) do
    params = Map.merge(params, %{api_key: @api_key})
    if Mix.env == :test, do: params = Map.merge(params, %{test: true})
    get(@base_url <> path, params)
  end

  defp get(url, params) do
    case HTTPoison.get(url <> "?" <> URI.encode_query(params), [timeout: 15000, recv_timeout: 10000]) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}}
        -> body |> NioEligible.JSON.decode!
      {:ok, %HTTPoison.Response{status_code: 400, body: body}}
        -> body |> NioEligible.JSON.decode!
      {:error, %HTTPoison.Error{id: _, reason: error}}
        -> {:error, error}
    end
  end

end
