defmodule SkySkool.Repo.Migrations.CreateStudent do
  use Ecto.Migration

  def change do
    create table(:students) do
      add :first_name, :string
      add :last_name, :string
      add :father_name, :string
      add :mother_name, :string
      add :parent_mob_number, :string
      add :parent_email_id, :string
      add :address, :string
      add :date_of_birth, :date
      add :class, :integer, default: 0  #-3: play-group, -2: nursary, -1: kg1, 0: kg2, 1: class 1.....
      timestamps()
    end

  end
end
