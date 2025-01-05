class AddDepartureAirportIdToFlights < ActiveRecord::Migration[7.2]
  def change
    add_column :flights, :departure_airport_id, :integer
    add_index :flights, :departure_airport_id
  end
end
