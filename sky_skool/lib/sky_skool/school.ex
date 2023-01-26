defmodule SkySkool.School do
  use Ecto.Schema
  import Ecto.Changeset

  schema "schools" do
    field :name, :string
    field :city, :string
    field :area, :string
    field :pin, :integer
    field :board_type, :integer, default: 0 #0: CBSE, 1: ICSE, 2: State-Board
    field :school_type, :integer, default: 0 # 0: pre-primary, 1: primary, 2: middle, 3: secondary, 4: Sr. Secondory
    has_many :students, SkySkool.Student
    timestamps()
  end


  def changeset(struct, params) do
    struct
    |> cast(params, [:name, :city, :area, :pin, :board_type, :school_type])
    |> validate_required([:name, :city, :area, :pin, :board_type, :school_type])
    |> validate_inclusion(:pin, 100000..9999999)
    |> validate_inclusion(:board_type, 0..2)
    |> validate_inclusion(:school_type, 0..4)

  end

end
