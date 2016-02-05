# NioEligible

NioEligible is an Elixir wrapper for the Eligible API.

## Installation
Add `nio_eligible` to your list of dependencies in `mix.exs`:
```
def deps do
[{:nio_eligible, git: "https://github.com/maxnevians/nio_eligible.git"}]
end
```

## Usage

##### Credentials

To start using the API you need to provide a `:api_key` as part of your configuration for `:nio_eligible`. The application will raise an error if you do not provide it. Ex:

```
config :nio_eligible, api_key: "XXXX"
```

##### Functions

All functions are available on the root `NioEligible` module. Ex.

`NioEligible.coverage(%{payer_id: "00001", provider_last_name: "Doe", provider_first_name: "John", provider_npi: "0123456789"})`

returns a struct with the resulting information. Similarly

`NioEligible.payers`

returns a collection of structs containing the search result.

The naming convention should mirror the endpoints found here:

https://account.eligible.com/rest

### ToDo

Not all API calls are implemented - here is completion list:

- [ ] Claim Submissions
- [X] Coverage
- [ ] Customers
- [ ] Cost Estimates
- [ ] Payment Status
- [X] Payers
- [ ] Enrollments
- [ ] Referral
- [ ] Pre-certifications
- [ ] Realtime Adjudication & Estimate

### Version
0.5.0

License
----
MIT
