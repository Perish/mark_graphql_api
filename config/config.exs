# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mark_graphql_api,
  ecto_repos: [MarkGraphqlApi.Repo]

# Configures the endpoint
config :mark_graphql_api, MarkGraphqlApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kSIKdySt9cWfXyvHqvX3hH1wCo9cSxUAonATXa3YvKQvv1QkTt0kq/7hNpiet2RP",
  render_errors: [view: MarkGraphqlApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MarkGraphqlApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Configures Guardian
config :mark_graphql_api, MarkGraphqlApi.Guardian,
  issuer: "mark_graphql_api",
  secret_key: "lyq+2cJ7j51Ei615ejwX+rdqAoRaHZwwpxb6E3XINqKfrIs1nTTnooxepbTXbFoV"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
