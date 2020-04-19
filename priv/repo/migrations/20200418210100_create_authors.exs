defmodule ApiFolhaDirigida.Repo.Migrations.CreateAuthors do
  use Ecto.Migration

  def change do
    create table(:authors) do
      add :name, :text, null: false
      add :description, :text

      timestamps()
    end
  end
end
