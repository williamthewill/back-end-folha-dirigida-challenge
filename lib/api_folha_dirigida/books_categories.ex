defmodule ApiFolhaDirigida.BooksCategories do
  use ApiFolhaDirigida.Schema
  import Ecto.Changeset

  @doc since: "1.0.0"
  @primary_key false
  schema "categories_books" do
    belongs_to(:books, ApiFolhaDirigida.Books, type: :binary_id, primary_key: true)
    belongs_to(:categories, ApiFolhaDirigida.Categories, type: :binary_id, primary_key: true)

    timestamps()
  end

  @doc since: "1.0.0"
  def changeset(books, attrs) do
    books
    |> cast(attrs, [:category_id, :book_id])
    |> validate_required([:category_id, :book_id])
  end
end
