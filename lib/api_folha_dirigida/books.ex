defmodule ApiFolhaDirigida.Books do
  use ApiFolhaDirigida.Schema
  import Ecto.Changeset

  @doc since: "1.0.0"
  @derive {Poison.Encoder, only: [:id, :name, :price, :synopsis, :image, :authors, :categories]}
  schema "books" do
    field(:name, :string)
    field(:price, :float)
    field(:synopsis, :string)
    field(:image, :string)

    timestamps()

    many_to_many(:authors, ApiFolhaDirigida.Authors,
      join_through: ApiFolhaDirigida.BooksAuthors,
      on_replace: :delete
    )

    many_to_many(:categories, ApiFolhaDirigida.Categories,
      join_through: ApiFolhaDirigida.BooksCategories,
      on_replace: :delete
    )
  end

  @doc since: "1.0.0"
  def changeset(books, attrs) do
    books
    |> cast(attrs, [:name, :price, :synopsis, :image])
    |> validate_required([:name, :price])
  end
end
