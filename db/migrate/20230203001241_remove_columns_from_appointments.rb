class RemoveColumnsFromAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :time
    remove_column :appointments, :start_time
    remove_column :appointments, :end_time
  end
end
