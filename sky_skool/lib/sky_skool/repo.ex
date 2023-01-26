defmodule SkySkool.Repo do
  use Ecto.Repo,
    otp_app: :sky_skool,
    adapter: Ecto.Adapters.Postgres
end
