defmodule CodeHygiene do
  @moduledoc """
  CodeHygiene keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  use Boundary, deps: [CodeHygieneSchema]

  alias CodeHygiene.Products

  defdelegate list_products, to: Products
  defdelegate get_product!(id), to: Products
  defdelegate create_product(attrs \\ %{}), to: Products
  defdelegate update_product(product, attrs), to: Products
  defdelegate delete_product(product), to: Products
  defdelegate change_product(product, attrs \\ %{}), to: Products
end
