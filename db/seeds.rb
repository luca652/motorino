# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
User.destroy_all
Moped.destroy_all

user1 = User.create!(first_name: "Fausto", last_name: "Scartabellotti", password: "123456", email: "1@me.com")
user2 = User.create!(first_name: "Will", last_name: "Drinkandrive", password: "123456", email: "2@me.com")
user3 = User.create!(first_name: "Carmine", last_name: "Sorrento", password: "123456", email: "3@me.com")
user4 = User.create!(first_name: "Carlo", last_name: "Polpettone", password: "123456", email: "4@me.com")
user5 = User.create!(first_name: "Valentino", last_name: "Rossi", password: "123456", email: "5@me.com")
user6 = User.create!(first_name: "Sandra", last_name: "Bianchi", password: "123456", email: "6@me.com")

phantom = Moped.create!(name: "Phantom Malaguti", color: "Orange", description: "*", image_url: "mopeds/phantom.png", n_of_passengers: 1, price: "100", user_id: user1.id, address: "Via XX Settembre 100 Genova Italy")
f10 = Moped.create!(name: "F10 Malaguti", color: "White", description: "*", image_url: "mopeds/F10.png", n_of_passengers: 1, price: "55", user_id: user2.id, address: "Via Malta 14 Genova Italy")
rx = Moped.create!(name: "RX 50 Aprilia", color: "Blue and white", description: "*", image_url: "mopeds/RX.png", n_of_passengers: 1, price: "90", user_id: user3.id, address: "Piazza Embriaci 1 Genova Italy")
rs = Moped.create!(name: "RS 50 Aprilia", color: "Black", description: "*", image_url: "mopeds/RS.png", n_of_passengers: 1, price: "110", user_id: user3.id, address: "Via San Lorenzo 12 Genova Italy")
lambretta = Moped.create!(name: "Lambretta SX200", color: "White", description: "*", image_url: "mopeds/lambretta-white.png", n_of_passengers: 2, price: "120", user_id: user6.id, address: "138 Kingsland Rd London E2 8DY")
vespa64 = Moped.create!(name: "Vintage 1964 Vespa", color: "Red", description: "*", image_url: "mopeds/vespa.png", n_of_passengers: 2, price: "120", user_id: user6.id, address: "Craven Road 7 London")
lambretta200 = Moped.create!(name: "Vintage 1961 Lambretta", color: "Blue", description: "*", image_url: "mopeds/lambretta-blue.png", n_of_passengers: 2, price: "120", user_id: user6.id, address: "138 Kingsland Rd London E2 8DY")
lambretta61 = Moped.create!(name: "Patricia", color: "White", description: "*", image_url: "mopeds/lambretta.png", n_of_passengers: 2, price: "120", user_id: user6.id, address: "12 Lewisham Way London")
apecross = Moped.create!(name: "Ape Cross", color: "Pale Blue", description: "*", image_url: "mopeds/ape.png", n_of_passengers: 2, price: "60", user_id: user4.id, address: "Via Giovanni Pascoli 8 Genova Italy")
ape150 = Moped.create!(name: "Ape 150", color: "Gray", description: "*", image_url: "mopeds/ape-gray.png", n_of_passengers: 2, price: "80", user_id: user4.id, address: "Via Manfredo Fanti 21 Genova Italy")
sfx1 = Moped.create!(name: "Honda SFX 50", color: "Silver", description: "*", image_url: "mopeds/sfx.png", n_of_passengers: 1, price: "80", user_id: user4.id, address: "Corso Onofrio Scassi 17 Genova Italy")
sfx2 = Moped.create!(name: "Honda SFX 50", color: "Black", description: "*", image_url: "mopeds/sfx-black.png", n_of_passengers: 1, price: "80", user_id: user4.id, address: "Via Balbi 38 Genova Italy")
sr = Moped.create!(name: "SR 50 Aprilia", color: "Orange", description: "*", image_url: "mopeds/sr.png", n_of_passengers: 1, price: "110", user_id: user5.id, address: "Via Acquarone 20 Genova Italy")
firefox = Moped.create!(name: "Firefox Malaguti", color: "Gray", description: "*", image_url: "mopeds/firefox.png", n_of_passengers: 1, price: "90", user_id: user5.id, address: "Via Assarotti 8 Genova Italy")
ciao = Moped.create!(name: "Ciao Piaggio", color: "Black", description: "*", image_url: "mopeds/ciao.png", n_of_passengers: 1, price: "50", user_id: user5.id, address: "Via Ponterotto 2 Genova Italy")


Booking.create!(user_id: user1.id, moped_id: lambretta.id, start_date: "2023/3/15", end_date: "2023/3/18")
Booking.create!(user_id: user5.id, moped_id: vespa64.id, start_date: "2023/4/18", end_date: "2023/4/22")
Booking.create!(user_id: user3.id, moped_id: lambretta.id, start_date: "2023/1/28", end_date: "2023/1/30")
Booking.create!(user_id: user2.id, moped_id: lambretta61.id, start_date: "2023/1/28", end_date: "2023/1/30")
Booking.create!(user_id: user3.id, moped_id: lambretta200.id, start_date: "2023/5/30", end_date: "2023/6/5")
