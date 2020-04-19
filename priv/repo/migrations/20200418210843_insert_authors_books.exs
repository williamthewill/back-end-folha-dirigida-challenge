defmodule ApiFolhaDirigida.Repo.Migrations.InsertBooksAuthors do
  use Ecto.Migration

  import Ecto.Query
  alias ApiFolhaDirigida.{BooksAuthors, Repo}

  def up do
    now = NaiveDateTime.truncate(NaiveDateTime.utc_now(), :second)

    Repo.insert_all(BooksAuthors, [
      %{
        books_id: "a46c9a5c-fd6a-44cc-9827-77d35e267c66",
        authors_id: "a46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "b46c9a5c-fd6a-44cc-9827-77d35e267c66",
        authors_id: "b46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "c46c9a5c-fd6a-44cc-9827-77d35e267c66",
        authors_id: "b46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "d46c9a5c-fd6a-44cc-9827-77d35e267c66",
        authors_id: "c46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "d46c9a5c-fd6a-44cc-9827-77d35e267c66",
        authors_id: "d46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "e46c9a5c-fd6a-44cc-9827-77d35e267c66",
        authors_id: "e46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "e46c9a5c-fd6a-44cc-9827-77d35e267c66",
        authors_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c66",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c66",
        authors_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c65",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c65",
        authors_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c64",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c64",
        authors_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c63",
        inserted_at: now,
        updated_at: now
      },
      %{
        books_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c63",
        authors_id: "f46c9a5c-fd6a-44cc-9827-77d35e267c62",
        inserted_at: now,
        updated_at: now
      }
    ])
  end

  def down do
    from(a in BooksAuthors) |> Repo.delete_all()
  end
end
