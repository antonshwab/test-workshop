use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :workshop, WorkshopWeb.Endpoint,
  secret_key_base: "secret-key-base-secret-key-base-secret-key-base-secret-key-basesecret-key-base-secret-key-base-secret-key-base-secret-key-basesecret-key-base-secret-key-base-secret-key-base-secret-key-base",
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, :console, format: "[$level] $message\n"

# Configure your database
config :workshop, Workshop.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "workshop_test",
  hostname: "db",
  pool: Ecto.Adapters.SQL.Sandbox
