# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "123456", email: "otto@me.com")
User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "123456", email: "nove@me.com")
User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "123456", email: "dieci@me.com")
User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "123456", email: "sette@me.com")

40.times do
  name = %w(Phantom Ciao Si F10 Sr Vespa Ape).sample
  color = %w(red blue green yellow).sample
  description = "amazing"
  n_of_passengers = 1
  price = 100
  user_id = rand(1..5)
  Moped.create!(name:, color:, description:, price:, n_of_passengers:, user_id:)
end

15.times do
  user_id = rand(1..5)
  moped_id = rand(1..40)
  start_date = "2023/3/15"
  end_date = "2023/2/17"
  Booking.create!(user_id:, moped_id:, start_date:, end_date:)
end
