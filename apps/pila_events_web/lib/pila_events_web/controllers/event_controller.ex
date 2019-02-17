defmodule PilaEventsWeb.EventController do
  use PilaEventsWeb, :controller

  def show(conn, %{"id" => id}) do
    event = PilaEvents.EventQueries.get_by_id(id)
    |> IO.inspect()
    
    render conn, "details.html", event: event
  end
end
