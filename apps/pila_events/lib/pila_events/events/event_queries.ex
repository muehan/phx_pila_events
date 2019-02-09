defmodule PilaEvents.EventQueries do
    import Ecto.Query

    alias PilaEvents.{Repo, Events}

    def get_all do
        Repo.all(from Events)
    end
end