class ChangeHourInAppointments < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :hour, :string
  end
end
