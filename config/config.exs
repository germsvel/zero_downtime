# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :zero_downtime,
  ecto_repos: [ZeroDowntime.Repo]

# Configures the endpoint
config :zero_downtime, ZeroDowntimeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "S0WkjxX29EZBH+GHvmYQo/BNRsNiNzODPELPZzcyG8SyJnuzVmtgRsEeRJEV68pC",
  render_errors: [view: ZeroDowntimeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ZeroDowntime.PubSub,
  live_view: [signing_salt: "hoaUOr2A"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
