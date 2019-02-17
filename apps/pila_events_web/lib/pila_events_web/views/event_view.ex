defmodule PilaEventsWeb.EventView do
    use PilaEventsWeb, :view
    
    def format_date(date) do
      "#{date.day}-#{date.month}-#{date.year}"
    end
end