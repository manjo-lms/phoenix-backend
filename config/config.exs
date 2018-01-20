# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :manjo_server,
  ecto_repos: [ManjoServer.Repo]

# Configures the endpoint
config :manjo_server, ManjoServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ebf9DMzqr0acCUb8GecZKOJElGcdZm8Z20DWVEHTOIjf+FLQcRG2RJmuO4mG4Xjs",
  render_errors: [view: ManjoServerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ManjoServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
