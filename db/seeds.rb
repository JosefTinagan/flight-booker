# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create!(code: "NYC")
Airport.create!(code: "SFO")

Flight.create!(start_id: 1, finish_id: 2, start_date: (Time.now + 1.day), flight_duration: "1 hour")
Flight.create!(start_id: 2, finish_id: 1, start_date: (Time.now + 2.day), flight_duration: "2 hours")
