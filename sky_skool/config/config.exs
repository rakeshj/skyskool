import Config


config :sky_skool, ecto_repos: [SkySkool.Repo]

config :sky_skool, SkySkool.Repo,
  database: "sky_skool_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5432"
