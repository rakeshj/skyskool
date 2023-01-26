defmodule SkySkool.Repo.Migrations.CreateSchool do
  use Ecto.Migration

  def change do

    create table(:schools) do
      add :name, :string
      add :city, :string
      add :area, :string
      add :pin, :integer
      add :board_type, :integer, default: 0 #0: CBSE, 1: ICSE, 2: State-Board
      add :school_type, :integer, default: 0 # 0: pre-primary, 1: primary, 2: middle, 3: secondary, 4: Sr. Secondory
      timestamps()
    end
  end
end
