defmodule ApiFolhaDirigida.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add(:name, :text, null: false)
      add(:price, :float, null: false)
      add(:synopsis, :text)
      add(:image, :text)

      timestamps()
    end
  end
end
