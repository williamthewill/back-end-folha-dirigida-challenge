defmodule ApiFolhaDirigida.Repo.Migrations.InsertBooksCategories do
  use Ecto.Migration

  import Ecto.Query
  alias ApiFolhaDirigida.{BooksCategories, Repo}

  def up do
    now = NaiveDateTime.truncate(NaiveDateTime.utc_now(), :second)

    Repo.insert_all(BooksCategories, [
      %{
        books_id: "a46c9a5c-fd6a-44cc-9827-77d35e267c66",
        categories_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "b46c9a5c-fd6a-44cc-9827-77d35e267c66",
        categories_id: "d46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "c46c9a5c-fd6a-44cc-9827-77d35e267c66",
        categories_id: "d46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "d46c9a5c-fd6a-44cc-9827-77d35e267c66",
        categories_id: "c46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "e46c9a5c-fd6a-44cc-9827-77d35e267c66",
        categories_id: "b46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "e46c9a5c-fd6a-44cc-9827-77d35e267c66",
        categories_id: "a46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c66",
        categories_id: "c46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c65",
        categories_id: "c46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c65",
        categories_id: "d46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c65",
        categories_id: "e46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c64",
        categories_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c63",
        categories_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c65",
        inserted_at: now,
        updated_at: now
      }
    ])
  end

  def down do
    from(a in BooksCategories) |> Repo.delete_all()
  end
end
