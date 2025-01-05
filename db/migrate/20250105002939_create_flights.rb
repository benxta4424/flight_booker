class CreateFlights < ActiveRecord::Migration[7.2]
  def change
    create_table :flights do |t|
      t.date :date
      t.integer :floght_duration

      t.timestamps
    end
  end
end
