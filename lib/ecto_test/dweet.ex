defmodule EctoTest.Dweet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "dweets" do
    field :content, :string
    field :author, :string
  end

  def changeset(dweet, params \\ %{}) do
    dweet
    |> cast(params, [:content, :author])
  end
end
