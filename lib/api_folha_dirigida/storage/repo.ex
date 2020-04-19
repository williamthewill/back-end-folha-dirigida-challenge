defmodule ApiFolhaDirigida.Storage.Repo do
  use Ecto.Repo,
    otp_app: :api_folha_dirigida,
    adapter: Ecto.Adapters.Postgres
end
