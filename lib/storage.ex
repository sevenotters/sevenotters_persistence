defmodule SevenottersPersistence.Storage do
  @moduledoc false

  @callback initialize(String.t()) :: any
  @callback insert(String.t(), Map.t()) :: any
  @callback new_id :: any
  @callback object_id(String.t()) :: any
  @callback printable_id(any) :: String.t()
  @callback is_valid_id?(any) :: Boolean.t()
  @callback max_in_collection(String.t(), atom) :: Int.t()
  @callback drop_collections(List.t()) :: any

  @callback content_by_correlation_id(String.t(), String.t(), any) :: List.t()
  @callback content_by_types(String.t(), [String.t()], any) :: List.t()
  @callback content(String.t()) :: List.t()

  @callback sort_expression() :: atom()
end
