# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dummy_blog,
  ecto_repos: [DummyBlog.Repo]

# Configures the endpoint
config :dummy_blog, DummyBlog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ROYpxw2opnmphNd+oqg1aYfJAZWVxDUWlFkOXaTKOG+jK7hWvVfc264z2yJRRXmU",
  render_errors: [view: DummyBlog.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DummyBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
