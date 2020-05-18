# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Booking.destroy_all
Pet.destroy_all
User.destroy_all
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1=User.new(email: "charlotte.pichelot@gmail.com", password: "chacha", first_name: "charlotte", last_name: "pichelot" )
user1.save
user2=User.new(email: "tot@gmail.com", password: "hellotoday", first_name: "titi", last_name: "toto" )
user2.save
user3=User.new(email: "mimi@gmail.com", password: "mimimi", first_name: "myriam", last_name: "dbs" )
user3.save
user4=User.new(email: "antoine@gmail.com", password: "antoiner", first_name: "antoine", last_name: "rochon" )
user4.save
user5=User.new(email: "brad@gmail.com", password: "braddfuji", first_name: "brad", last_name: "fuji" )
user5.save

pet1=Pet.new(species: "cat", name: "crakotte", user: user1)
pet1.save
pet2=Pet.new(species: "dog", name: "pluto", user: user2)
pet2.save
pet3=Pet.new(species: "mouse", name: "mickey", user: user3)
pet3.save

Booking.create(pet: pet1, user: user2, total_price: 1000)
Booking.create(pet: pet3, user: user4, total_price: 7000)
Booking.create(pet: pet2, user: user4, total_price: 2000)

