defmodule SevenottersPersistence.Storage do
  @moduledoc false

  @callback initialize(bitstring) :: any
  @callback insert(bitstring, map) :: any
  @callback new_id :: any
  @callback new_printable_id :: bitstring
  @callback object_id(bitstring) :: any
  @callback printable_id(any) :: bitstring
  @callback is_valid_id?(any) :: boolean
  @callback max_in_collection(bitstring, atom) :: integer
  @callback drop_collections([bitstring]) :: any

  @callback content_by_correlation_id(bitstring, bitstring, any) :: [map]
  @callback content_by_types(bitstring, [bitstring], any) :: [map]
  @callback content(bitstring) :: [map]

  @callback sort_expression() :: atom
end
