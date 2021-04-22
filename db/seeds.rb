# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Ben Harter-Murphy", email: "me@me.com", address: "123 None Ya Buisness Ave")
User.create(name: "Lynne Murphy", email: "me@me.com", address: "123 None Ya Buisness Ave")
User.create(name: "Joe Murphy", email: "me@me.com", address: "123 None Ya Buisness Ave")

Task.create(activity: "Vaccuming", user_id: 1)
Task.create(activity: "Sweeping", user_id: 2)
Task.create(activity: "Dishes", user_id: 3)