class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :time
      t.string :specialty
      t.references :pet, null: false, foreign_key: true
      t.references :vet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
