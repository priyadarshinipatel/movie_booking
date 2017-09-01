# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Movie.create(name: "BossBaby")
Movie.create(name: "Zootopia")
Movie.create(name: "The Fast and the Furious")

Seat.create(number: "A1")
Seat.create(number: "A2")
Seat.create(number: "A3")
Seat.create(number: "A4")
Seat.create(number: "A5")
Seat.create(number: "A6")
Seat.create(number: "A7")
Seat.create(number: "A8")
Seat.create(number: "A9")
Seat.create(number: "A10")
Seat.create(number: "A11")

Show.create(show_time_start:"09:00:00", show_time_end:"12:00:00", show_name: "09:12 AM")
Show.create(show_time_start:"12:00:00", show_time_end:"15:00:00", show_name: "12:03 PM")
Show.create(show_time_start:"15:00:00", show_time_end:"18:00:00", show_name: "03:06 PM")
Show.create(show_time_start:"18:00:00", show_time_end:"21:00:00", show_name: "06:09 PM")
