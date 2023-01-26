defmodule SkySkool.Attendance do

  use Ecto.Schema
  import Ecto.Changeset


  schema "attendance" do
    field :type, :integer # 0: absent, 1: present, 2: forenoon_absent, 3: afternoon_absent
    field :attendance_date, :date
    field :leave_applied, :boolean, default: false
    belongs_to :student, SkySkool.Student
    timestamps()
  end


  def changeset(struct, params) do
    struct
    |> cast(params, [:type, :attendance_date, :leave_applied,  :student_id])
    |> validate_required( [:type, :attendance_date,  :student_id])
    |> validate_inclusion(:type, 0..3)
    |> assoc_constraint(:student)
  end



end
