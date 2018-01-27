defmodule FindType do
  @moduledoc """
  Find the type of an Elixir item
  """

  @doc """
  Find the type of passed object

  ## Examples

      iex> FindType.find :hello
      :atom
      iex> FindType.find "hello"
      :bitstring
      iex> FindType.find {1, 2, 3, 4}
      :tuple


  """
  @spec find(any) :: atom
  def find(item) do
    cond do
      is_atom(item) -> try do
                          :erlang.get_module_info(item, :module)
                          :module
                       rescue
                          ArgumentError -> :atom
                       end
      is_bitstring(item) -> :bitstring
      is_boolean(item) -> :boolean
      is_float(item) -> :float
      is_function(item) -> :function
      is_integer(item) -> :integer
      is_list(item) -> :list
      is_map(item) -> if Map.has_key?(item, :__struct__), do: :struct, else: :map
      is_number(item) -> :number
      is_pid(item) -> :pid
      is_port(item) -> :port
      is_reference(item) -> :reference
      is_tuple(item) -> :tuple
      true -> :nil
    end
  end
end
