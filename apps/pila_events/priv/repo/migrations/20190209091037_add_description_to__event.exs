defmodule PilaEvents.Repo.Migrations.AddDescriptionTo_Event do
  use Ecto.Migration

  def change do
    alter table(:events) do
      add :description, :string, size: 1000
    end
  end
end
