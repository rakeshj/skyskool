defmodule SkySkool.Student do
  use Ecto.Schema
  import Ecto.Changeset

  schema "students" do
    field :first_name, :string
    field :last_name, :string
    field :father_name, :string
    field :mother_name, :string
    field :parent_mob_number, :string
    field :parent_email_id, :string
    field :address, :string
    field :date_of_birth, :date
    field :class, :integer, default: 0  #-3: play-group, -2: nursary, -1: kg1, 0: kg2, 1: class 1.....
    belongs_to :school, SkySkool.School
    has_many :attendance, SkySkool.Attendance
    timestamps()
  end


  def changeset(struct, params) do
    struct
    # |> IO.inspect("params : #{params}")
    |> cast(params, [:first_name, :last_name, :father_name, :mother_name, :parent_mob_number, :parent_email_id, :address, :date_of_birth, :class, :school_id])
    |> validate_required(params, [:first_name, :last_name, :father_name, :mother_name,  :address, :date_of_birth, :class, :school_id])
    |> validate_change(:date_of_birth, &validate/2)
    |> assoc_constraint(:schools)
  end

  def validate(:date_of_birth, dob) do
    case Date.compare(dob, Date.utc_today()) do
      :gt ->  [ :date_of_birth, "Date of birth can't be future date"]
      _ -> []
    end
  end

end
