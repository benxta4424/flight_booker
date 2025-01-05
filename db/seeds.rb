Airport.destroy_all

# Create airports
nyc = Airport.create!(name: "New York City")
orl = Airport.create!(name: "Orlando")
cal = Airport.create!(name: "California")
mia = Airport.create!(name: "Miami")
la = Airport.create!(name: "Los Angeles")
hou = Airport.create!(name: "Houston")
oh = Airport.create!(name: "Ohio")
ut = Airport.create!(name: "Utah")
miss = Airport.create!(name: "Mississippi")
yel = Airport.create!(name: "Yellowstone")

puts "#{Airport.count} airports added!"

# Create flights (with dates instead of date_times)
Flight.create!(
  date: Date.new(2025, 1, 5),
  flight_duration: 180,
  departure_airport_id: nyc.id,
  arrival_airport_id: orl.id
)

Flight.create!(
  date: Date.new(2025, 1, 6),
  flight_duration: 240,
  departure_airport_id: orl.id,
  arrival_airport_id: cal.id
)

Flight.create!(
  date: Date.new(2025, 1, 7),
  flight_duration: 150,
  departure_airport_id: cal.id,
  arrival_airport_id: mia.id
)

Flight.create!(
  date: Date.new(2025, 1, 8),
  flight_duration: 300,
  departure_airport_id: la.id,
  arrival_airport_id: hou.id
)

Flight.create!(
  date: Date.new(2025, 1, 9),
  flight_duration: 200,
  departure_airport_id: hou.id,
  arrival_airport_id: oh.id
)

Flight.create!(
  date: Date.new(2025, 1, 10),
  flight_duration: 210,
  departure_airport_id: oh.id,
  arrival_airport_id: ut.id
)

Flight.create!(
  date: Date.new(2025, 1, 11),
  flight_duration: 220,
  departure_airport_id: ut.id,
  arrival_airport_id: miss.id
)

Flight.create!(
  date: Date.new(2025, 1, 12),
  flight_duration: 180,
  departure_airport_id: miss.id,
  arrival_airport_id: yel.id
)

puts "#{Flight.count} flights added!"
