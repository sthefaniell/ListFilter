defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call" do
    test "return the Odd of list" do
      # assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
      response = ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])

      expected_response = 3

      assert response == expected_response
    end
  end
end
