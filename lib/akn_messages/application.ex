defmodule AknMessages.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      AknMessages.Repo,
      {AknMessages.JobQueue, repo: AknMessages.Repo, max_demand: 100}
      # Starts a worker by calling: AknMessages.Worker.start_link(arg)
      # {AknMessages.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AknMessages.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
