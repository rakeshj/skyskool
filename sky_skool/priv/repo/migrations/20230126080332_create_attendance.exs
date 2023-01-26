defmodule SkySkool.Repo.Migrations.CreateAttendance do
  use Ecto.Migration

  def change do

    create table(:attendance) do
      add :type, :integer # 0: absent, 1: present, 2: forenoon_absent, 3: afternoon_absent
      add :attendance_date, :date
      add :leave_applied, :boolean
      add :student_id, references(:students)
      timestamps()
    end

    create index(:attendance, [:student_id])

  end
end
