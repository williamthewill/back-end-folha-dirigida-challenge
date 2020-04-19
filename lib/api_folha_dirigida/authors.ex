defmodule ApiFolhaDirigida.Authors do
  use ApiFolhaDirigida.Schema
  import Ecto.Changeset

  @doc since: "1.0.0"
  @derive {Poison.Encoder, only: [:name, :description]}
  schema "authors" do
    field(:name, :string)
    field(:description, :string)

    timestamps()

    many_to_many(:books, ApiFolhaDirigida.Books,
      join_through: ApiFolhaDirigida.BooksAuthors,
      on_replace: :delete
    )
  end

  @doc since: "1.0.0"
  def changeset(authors, attrs) do
    authors
    |> cast(attrs, [:name, :description])
    |> validate_required([:name])
  end
end
