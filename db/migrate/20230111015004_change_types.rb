class ChangeTypes < ActiveRecord::Migration[7.0]
  def change
    rename_column :animal_types, :type, :animal_type
    rename_column :record_types, :type, :record_type
  end
end
