defmodule PilaEvents.Repo do
  use Ecto.Repo,
    otp_app: :pila_events,
    adapter: Ecto.Adapters.Postgres
end
