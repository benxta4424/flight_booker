class ChangeColumnFloghtDurationToFlightDuration < ActiveRecord::Migration[7.2]
  def change
    rename_column :flights, :floght_duration, :flight_duration
  end
end
