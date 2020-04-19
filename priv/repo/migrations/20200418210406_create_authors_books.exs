defmodule ApiFolhaDirigida.Repo.Migrations.CreateAuthorsBooks do
  use Ecto.Migration

  def change do
    create table(:authors_books, primary_key: false) do
      add(:books_id, references(:books), primary_key: true)
      add(:authors_id, references(:authors), primary_key: true)

      timestamps()
    end

    create(index(:authors_books, [:books_id]))
    create(index(:authors_books, [:authors_id]))

    create(
      unique_index(:authors_books, [:authors_id, :books_id], name: :author_id_book_id_unique_index)
    )
  end
end
