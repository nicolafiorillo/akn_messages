defmodule AknMessages.Repo do
  use Ecto.Repo,
    otp_app: :akn_messages,
    adapter: Ecto.Adapters.Postgres
end
