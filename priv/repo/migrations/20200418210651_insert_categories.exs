defmodule ApiFolhaDirigida.Repo.Migrations.InsertCategories do
  use Ecto.Migration

  import Ecto.Query
  alias ApiFolhaDirigida.{Categories, Repo}

  def up do
    now = NaiveDateTime.truncate(NaiveDateTime.utc_now(), :second)

    Repo.insert_all(Categories, [
      %{
        id: "a46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Graphic Novels",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "b46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Manga",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "c46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Literary Fiction",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "d46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Suspense",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "e46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Thriller",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "f46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Fairy Tales",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "f46c9a5c-fd6a-44cc-9827-77d35e267c65",
        name: "Mathematics",
        inserted_at: now,
        updated_at: now
      }
    ])
  end

  def down do
    from(a in Categories) |> Repo.delete_all()
  end
end
