defmodule ZeroDowntime.Repo do
  use Ecto.Repo,
    otp_app: :zero_downtime,
    adapter: Ecto.Adapters.Postgres
end
