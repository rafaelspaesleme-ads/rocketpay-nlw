defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
    #file = File.read("#{filename}.csv")
    #handle_file(file)
    # ou
    "#{filename}.csv"
    |> File.read()
    |> handle_sum()
  end

  defp handle_sum({:ok, file}) do
    result = file
    |> String.split(",")
    |> Stream.map(fn number -> String.to_integer(number) end)
    |> Enum.sum()

    {:ok, %{result: result}}
  end

  defp handle_sum({:error, _reason}), do: {:error, "Arquivo invalido!"}
end