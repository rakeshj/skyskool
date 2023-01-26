defmodule SkySkool.Repo.Migrations.AddAssociationInStudent do
  use Ecto.Migration

  def change do

    alter table(:students) do
      add :school_id, references(:schools)
    end

    create index(:students, [:school_id])

  end
end
