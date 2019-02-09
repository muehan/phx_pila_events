# Since configuration is shared in umbrella projects, this file
# should only configure the :pila_events application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :pila_events, PilaEvents.Repo,
  username: "postgres",
  password: "postgres",
  database: "pila_events_dev",
  hostname: "localhost",
  pool_size: 10
