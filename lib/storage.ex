defmodule SevenottersPersistence.Storage do
  @callback initialize(String.t()) :: any
  @callback insert(String.t(), Map.t()) :: any
  @callback new_id :: any
  @callback object_id(String.t()) :: any
  @callback printable_id(any) :: String.t()
  @callback is_valid_id?(any) :: Boolean.t()
  @callback max_in_collection(String.t(), atom) :: Int.t()
  @callback content_of(String.t(), Map.t(), Map.t()) :: List.t()
  @callback drop_collections(List.t()) :: any
  @callback sort_expression() :: any
  @callback correlation_id_expression() :: any
  @callback type_expression([String.t()]) :: any
end
