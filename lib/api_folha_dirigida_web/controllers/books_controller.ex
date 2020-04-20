defmodule ApiFolhaDirigidaWeb.BooksController do
  @moduledoc """
  Module of controller
  """
  @moduledoc since: "1.0.0"
  use ApiFolhaDirigidaWeb, :controller

  import Ecto.Query

  alias ApiFolhaDirigida.{Books, Repo}

  @doc since: "1.0.0"
  @spec health(
          Plug.Conn.t(),
          any
        ) :: Plug.Conn.t()
  def health(conn, _params) do
    conn |> put_status(200) |> json(%{data: true})
  end

  @doc since: "1.0.0"
  def get_books(conn, _params) do
    books = Books |> preload([b], [:categories, :authors]) |> Repo.all()

    j_books =
      Enum.map(books, fn book ->
        {_, en_book} = book |> Poison.encode()
        {_, j_book} = Poison.decode(en_book)
        j_book
      end)

    conn |> put_status(200) |> json(j_books)
  end

  @doc since: "1.0.0"
  def get_book_by_id(conn, params) do
    book = Books |> preload([b], [:categories, :authors]) |> Repo.get(params["id"])

    {_, en_book} = book |> Poison.encode()
    {_, j_book} = Poison.decode(en_book)

    conn |> put_status(200) |> json(j_book)
  end
end
