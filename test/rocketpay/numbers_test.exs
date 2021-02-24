defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "Retorno de soma de números dentro do arquivo como sucesso" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 55}}

      assert response == expected_response
    end

    test "Retorno de soma de números dentro do arquivo como erro" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, "Arquivo invalido!"}

      assert response == expected_response
    end
  end

end
