defmodule SkySkool do

  @moduledoc """
  Documentation for `SkySkool`.

  """
  alias SkySkool.{School, Student, Attendance}

  @repo SkySkool.Repo


  ####School helper function####

  def list_schools(), do: @repo.all(School)
  def get_school(id), do: @repo.get(School, id)
  def insert_school(attrs) do
    %School{}
    |> School.changeset(attrs)
    |> @repo.insert()
  end
  def delete_school(%School{} = school), do: @repo.delete(school)



  def list_students(), do: @repo.all(Student)
  def get_student(id), do: @repo.get(Student, id)
  def insert_student(attrs) do
    %Student{}
    |> Student.changeset(attrs)
    |> @repo.insert()
  end
  def delete_student(%Student{} = student), do: @repo.delete(student)






  def list_attendance(), do: @repo.all(Attendance)
  def get_attendance(id), do: @repo.get(Attendance, id)
  def insert_attendance(attrs) do
    %Attendance{}
    |> Attendance.changeset(attrs)
    |> @repo.insert()
  end
  def delete_attendance(%Attendance{} = attendance), do: @repo.delete(attendance)




  @doc """
  Hello world.

  ## Examples

      iex> SkySkool.hello()
      :world

  """
  def hello do
    :world
  end
end
