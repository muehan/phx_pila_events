# Since configuration is shared in umbrella projects, this file
# should only configure the :pila_events application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :pila_events,
  ecto_repos: [PilaEvents.Repo]

import_config "#{Mix.env()}.exs"
