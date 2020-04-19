# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :api_folha_dirigida, ApiFolhaDirigida.Repo, types: ApiFolhaDirigida.Storage.PostgresTypes

# Configures the endpoint
config :api_folha_dirigida, ApiFolhaDirigidaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aO7U39xq9mZn2aO7pZfCDprgj9O2ybF2WvB2ftJHmaiROFxZGLkLtIYO2fnpPFsl",
  render_errors: [view: ApiFolhaDirigidaWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ApiFolhaDirigida.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "xSjXmbVw"]

config :api_folha_dirigida, ecto_repos: [ApiFolhaDirigida.Repo]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
