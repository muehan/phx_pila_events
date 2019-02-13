
unless(PilaEvents.EventQueries.any) do 
    PilaEvents.EventQueries.create(PilaEvents.Events.changeset(%PilaEvents.Events{},
    %{
        date: "2019-05-05 00:18:30",
        title: "Cooking with Craps",
        location: "New York",
        description: "Cooking good meat with Mr Craps"
    }))
    
    PilaEvents.EventQueries.create(PilaEvents.Events.changeset(%PilaEvents.Events{},
    %{
        date: "2019-06-05 00:19:35",
        title: "Coding with Hans",
        location: "London",
        description: "Learn how to code Elixir with Hans"
    }))
 end