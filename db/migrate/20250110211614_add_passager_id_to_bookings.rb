class AddPassagerIdToBookings < ActiveRecord::Migration[7.2]
  def change
    add_column :bookings, :passager_id, :integer
    add_index :bookings, :passager_id
  end
end
