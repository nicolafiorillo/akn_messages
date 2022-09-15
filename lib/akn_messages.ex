defmodule AknMessages do
  @moduledoc """
  """

  defp add_a_job(n) do
    %{name: "Nicola #{n}"}
    |> AknMessages.JobQueue.new()
    |> AknMessages.Repo.insert()
  end

  def run(num) do
    1..num
    |> Enum.each(fn i -> Task.async(fn -> add_a_job(i) end) end)
  end
end
