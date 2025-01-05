class AddArrivalAirportIdToFlights < ActiveRecord::Migration[7.2]
  def change
    add_column :flights, :arrival_airport_id, :integer
    add_index :flights, :arrival_airport_id
  end
end
