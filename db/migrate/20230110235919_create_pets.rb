class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :birthdate
      t.float :weight
      t.integer :pet_chip

      t.timestamps
    end
  end
end
