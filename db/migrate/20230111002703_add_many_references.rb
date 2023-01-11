class AddManyReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :records, :vet, foreign_key: true
    add_reference :records, :pet, foreign_key: true
    add_reference :records, :record_type, foreign_key: true
    add_reference :pets, :owner, foreign_key: true
    add_reference :pets, :animal_type, foreign_key: true
  end
end
