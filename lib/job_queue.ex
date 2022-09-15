defmodule AknMessages.JobQueue do
  use EctoJob.JobQueue, table_name: "jobs"

  def perform(multi = %Ecto.Multi{}, job = %{}) do
    IO.inspect("#{inspect(self())}: #{inspect(job)}", label: "Perform:")
    AknMessages.Repo.transaction(multi)
  end
end
