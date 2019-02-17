defmodule PilaEventsWeb.EventViewTest do
    use PilaEventsWeb.ConnCase, async: true

    @tag current: true
    test "Should vonvert a date to a D-M-YYYY format" do
        date = DateTime.from_naive!(~N[2019-11-15 10:00:00], "Etc/UTC")
        formatted = PilaEventsWeb.EventView.format_date(date)
        assert formatted == "15-11-2019"
    end
end