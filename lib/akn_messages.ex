defmodule AknMessages do
  @moduledoc """
  """

  defp add_a_job(n) do
    %{name: "Example #{n}"}
    |> AknMessages.JobQueue.new()
    |> AknMessages.Repo.insert()
  end

  def run(num) do
    1..num
    |> Enum.each(fn i ->
      Task.start_link(fn ->
        add_a_job(i)
      end)
    end)
  end
end
