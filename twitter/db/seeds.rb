# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Relationship.destroy_all
Tweet.destroy_all

10.times do ; User.find_or_create_by(username: Faker::Name.first_name) ; end

User.create(username: "Dwight D. Eisenhower")
User.create(username: "Dwight B. LaDu")
User.create(username: "Dwight L. Moody")
User.create(username: "W. Dwight Pierce")
User.create(username: "Dwight York")


10.times do ; Relationship.find_or_create_by(followed_id: User.all.sample.id, follower_id: User.all.sample.id) ; end

25.times do ; Tweet.create(user: User.all.sample, content: Faker::Games::ClashOfClans.defensive_building) ; end