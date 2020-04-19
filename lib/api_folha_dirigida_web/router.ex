defmodule ApiFolhaDirigidaWeb.Router do
  use ApiFolhaDirigidaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ApiFolhaDirigidaWeb do
    pipe_through :api
    get("/health", BooksController, :health)
    get("/books", BooksController, :get_books)
  end
end
