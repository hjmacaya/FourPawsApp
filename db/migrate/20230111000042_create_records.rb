class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :name
      t.string :observation
      t.date :date

      t.timestamps
    end
  end
end
