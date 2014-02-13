# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pet_names = %w(Billy Gordy Mack Natasha)

50.times do
  user = User.create(name: Faker::Name::name, email: Faker::Internet::email)
  user.create_tamagotchi(name: pet_names[rand(4)])
end
