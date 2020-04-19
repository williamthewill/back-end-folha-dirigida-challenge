defmodule ApiFolhaDirigida.Repo.Migrations.CreateCategoriesBooks do
  use Ecto.Migration

  def change do
    create table(:categories_books, primary_key: false) do
      add(:books_id, references(:books), primary_key: true)
      add(:categories_id, references(:categories), primary_key: true)

      timestamps()
    end

    create(index(:categories_books, [:books_id]))
    create(index(:categories_books, [:categories_id]))

    create(
      unique_index(:categories_books, [:categories_id, :books_id],
        name: :category_id_book_id_unique_index
      )
    )
  end
end
