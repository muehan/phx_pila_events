defmodule PilaEventsWeb.EventController do
  use PilaEventsWeb, :controller

  def show(conn, %{"id" => id}) do
    event = PilaEvents.EventQueries.get_by_id(id)
    |> IO.inspect()
    
    render conn, "details.html", event: event
  end

  def list(conn, _params) do
    events = PilaEvents.EventQueries.get_all()
    
    render conn, "list.html", events: events
  end
end
