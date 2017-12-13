# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :util_me,
  ecto_repos: [UtilMe.Repo]

# Configures the endpoint
config :util_me, UtilMeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h4jPuTX1N0e3eu0G6CyHp02IvSiu7gS8NnuRK73V21FtsX/HEFRq2UMxLOee5QUg",
  render_errors: [view: UtilMeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UtilMe.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
