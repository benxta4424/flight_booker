class AddFlightIdToBookings < ActiveRecord::Migration[7.2]
  def change
    add_column :bookings, :flight_id, :integer
    add_index :bookings, :flight_id
  end
end
