# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :curtis,
  ecto_repos: [Curtis.Repo]

# Configures the endpoint
config :curtis, CurtisWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XzxxL0Ld5r1DotOzqVPJX/2bL9BgzfY6jad81dOAQC5f0fYA5Xr86IXkmvBKA9TQ",
  render_errors: [view: CurtisWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Curtis.PubSub,
  live_view: [signing_salt: "W2d8K5lh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
