# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :transproj,
  ecto_repos: [Transproj.Repo]

# Configures the endpoint
config :transproj, TransprojWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "S6vv3/Mo+VBxG+L9w5m/zhUwK/oL2GeFQgByqpMj7ljZTLm7zA9LAaUQnIXWd714",
  render_errors: [view: TransprojWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Transproj.PubSub,
  live_view: [signing_salt: "WHXyHrXw"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
