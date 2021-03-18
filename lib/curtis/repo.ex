defmodule Curtis.Repo do
  use Ecto.Repo,
    otp_app: :curtis,
    adapter: Ecto.Adapters.Postgres
end
