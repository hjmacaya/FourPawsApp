class ChangeVeterainaryToVeterinary < ActiveRecord::Migration[7.0]
  def change
    rename_table :veterainaries, :veterinaries
  end
end
