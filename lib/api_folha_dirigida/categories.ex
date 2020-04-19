defmodule ApiFolhaDirigida.Categories do
  use ApiFolhaDirigida.Schema
  import Ecto.Changeset

  @doc since: "1.0.0"
  @derive {Poison.Encoder, only: [:name]}
  schema "categories" do
    field(:name, :string)

    timestamps()

    many_to_many(:authors, ApiFolhaDirigida.Authors,
      join_through: ApiFolhaDirigida.BooksCategories,
      on_replace: :delete
    )
  end

  @doc since: "1.0.0"
  def changeset(categories, attrs) do
    categories
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
