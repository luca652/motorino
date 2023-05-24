# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "123456", email: "29@me.com")
# User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "123456", email: "30@me.com")
# User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "123456", email: "31@me.com")
# User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "123456", email: "32@me.com")

# 20.times do
#   name = %w(Phantom Ciao Si F10 Sr Vespa Ape).sample
#   color = %w(red blue green yellow).sample
#   description = "amazing"
#   n_of_passengers = 1
#   price = 100
#   user_id = rand(1..4)
#   address = ["16 Vla Gaudelet 75011 Paris France", "138 Kingsland Rd London E2 8DY"].sample
#   Moped.create!(name:, color:, description:, price:, address:, n_of_passengers:, user_id:)
# end

# 15.times do
#   user_id = rand(1..4)
#   moped_id = rand(1..20)
#   start_date = "2023/3/15"
#   end_date = "2023/4/17"
#   Booking.create!(user_id:, moped_id:, start_date:, end_date:)
# end
Booking.destroy_all
User.destroy_all
Moped.destroy_all

User.create!(first_name: "Fausto", last_name: "Scartabellotti", password: "123456", email: "1@me.com")
User.create!(first_name: "Will", last_name: "Drinkandrive", password: "123456", email: "2@me.com")
User.create!(first_name: "Carmine", last_name: "Sorrento", password: "123456", email: "3@me.com")
User.create!(first_name: "Carlo", last_name: "Polpettone", password: "123456", email: "4@me.com")
User.create!(first_name: "Valentino", last_name: "Rossi", password: "123456", email: "5@me.com")
User.create!(first_name: "Sandra", last_name: "Bianchi", password: "123456", email: "6@me.com")

Moped.create!(name: "Phantom Malaguti", color: "Orange", description: "*", n_of_passengers: 1, price: "100", user_id: 1, address: "Via XX Settembre 100 Genova Italy")
Moped.create!(name: "F10 Malaguti", color: "White", description: "*", n_of_passengers: 1, price: "55", user_id: 2, address: "Via Malta 14 Genova Italy")
Moped.create!(name: "RX 50 Aprilia", color: "Blue and white", description: "*", n_of_passengers: 1, price: "90", user_id: 3, address: "Piazza Embriaci 1 Genova Italy")
Moped.create!(name: "RS 50 Aprilia", color: "Black", description: "*", n_of_passengers: 1, price: "110", user_id: 3, address: "Via San Lorenzo 12 Genova Italy")
Moped.create!(name: "Lambretta SX200", color: "White", description: "*", n_of_passengers: 2, price: "120", user_id: 6, address: "138 Kingsland Rd London E2 8DY")
Moped.create!(name: "Vintage 1964 Vespa", color: "Red", description: "*", n_of_passengers: 2, price: "120", user_id: 6, address: "Craven Road 7 London")
Moped.create!(name: "Lambretta SX200", color: "Blue", description: "*", n_of_passengers: 2, price: "120", user_id: 6, address: "138 Kingsland Rd London E2 8DY")
Moped.create!(name: "Vintage 1961 Lambretta", color: "White", description: "*", n_of_passengers: 2, price: "120", user_id: 6, address: "12 Lewisham Way London")
Moped.create!(name: "Ape Cross", color: "White", description: "*", n_of_passengers: 2, price: "60", user_id: 4, address: "Via Giovanni Pascoli 8 Genova Italy")
Moped.create!(name: "Ape 150", color: "White", description: "*", n_of_passengers: 2, price: "80", user_id: 4, address: "Via Manfredo Fanti 21 Genova Italy")
Moped.create!(name: "Honda SFX 50", color: "Silver", description: "*", n_of_passengers: 1, price: "80", user_id: 4, address: "Corso Onofrio Scassi 17 Genova Italy")
Moped.create!(name: "Honda SFX 50", color: "Black", description: "*", n_of_passengers: 1, price: "80", user_id: 4, address: "Via Stefano Donder 14 Genova Italy")
Moped.create!(name: "SR 50 Aprilia", color: "Orange", description: "*", n_of_passengers: 1, price: "110", user_id: 5, address: "Via Acquarone 20 Genova Italy")
Moped.create!(name: "Firefox Malaguti", color: "Gray", description: "*", n_of_passengers: 1, price: "90", user_id: 5, address: "Via Assarotti 8 Genova Italy")
Moped.create!(name: "Ciao Piaggio", color: "Black", description: "*", n_of_passengers: 1, price: "50", user_id: 5, address: "Via Ponterotto 2 Genova Italy")

Booking.create!(user_id: "2", moped_id: "7", start_date: "2023/5/30", end_date: "2023/6/5")
Booking.create!(user_id: "1", moped_id: "5", start_date: "2023/3/15", end_date: "2023/3/18")
Booking.create!(user_id: "5", moped_id: "6", start_date: "2023/4/18", end_date: "2023/4/22")
Booking.create!(user_id: "3", moped_id: "5", start_date: "2023/1/28", end_date: "2023/1/30")
