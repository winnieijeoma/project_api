defmodule Transproj.Repo do
  use Ecto.Repo,
    otp_app: :transproj,
    adapter: Ecto.Adapters.Postgres
end
