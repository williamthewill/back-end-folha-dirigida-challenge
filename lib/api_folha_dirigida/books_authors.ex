defmodule ApiFolhaDirigida.BooksAuthors do
  use ApiFolhaDirigida.Schema
  import Ecto.Changeset

  @doc since: "1.0.0"
  @primary_key false
  schema "authors_books" do
    belongs_to(:books, ApiFolhaDirigida.Books, type: :binary_id, primary_key: true)
    belongs_to(:authors, ApiFolhaDirigida.Authors, type: :binary_id, primary_key: true)

    timestamps()
  end

  @doc since: "1.0.0"
  def changeset(books, attrs) do
    books
    |> cast(attrs, [:author_id, :book_id])
    |> validate_required([:author_id, :book_id])
  end
end
