class CreateRecordTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :record_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
