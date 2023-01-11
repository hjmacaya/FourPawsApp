class AddVeterinaryToVet < ActiveRecord::Migration[7.0]
  def change
    add_reference :vets, :veterinary, foreign_key: true
  end
end
