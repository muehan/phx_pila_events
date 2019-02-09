# Since configuration is shared in umbrella projects, this file
# should only configure the :pila_events_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :pila_events_web,
  ecto_repos: [PilaEvents.Repo],
  generators: [context_app: :pila_events]

# Configures the endpoint
config :pila_events_web, PilaEventsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MNzVNhAbU5xJpNVSrChisJQe8uq9sznqcmlO+7RQtWE4avSZSQrmd4kkfxMJHt//",
  render_errors: [view: PilaEventsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PilaEventsWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
