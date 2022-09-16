import Config

config :akn_messages, ecto_repos: [AknMessages.Repo]

config :akn_messages, AknMessages.Repo,
  database: "akn_messages",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5432",
  pool_size: 20
