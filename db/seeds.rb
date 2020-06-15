require "open-uri"

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
user4=User.new(email: "antoine@gmail.com", password: "123456", first_name: "antoine", last_name: "rochon" )
user4.save
user5=User.new(email: "brad@gmail.com", password: "braddfuji", first_name: "brad", last_name: "fuji" )
user5.save

file = URI.open('https://i.pinimg.com/originals/42/a8/ad/42a8ad6c7f7bb118aaa1c42336bf4122.jpg')
pet1 = Pet.new(species: "Spider", name: "Itsy", user: user1, price: 12, environment: "Indoor")
pet1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet1.save

file = URI.open('https://cdn.mos.cms.futurecdn.net/iXeBEQKNqRJkWWeXej3HcT-1200-80.jpg')
pet2 = Pet.new(species: "Elephant", name: "Dumbo", user: user1, price: 15, environment: "Outdoor")
pet2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet2.save

file = URI.open('https://cms-assets.tutsplus.com/uploads/users/108/posts/30758/preview_image/how-to-draw-puppy-preview.png')
pet3 = Pet.new(species: "Dog", name: "Snoopy", user: user1, address: "45 rue de juliod", age: 1 , environment: "Outdoor", price: 30)
pet3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet3.save

file = URI.open('https://cdn.mos.cms.futurecdn.net/L88NgH9C43zSr3Tgay5LF7-1200-80.jpg')
pet4 = Pet.new(species: "Lion", name: "King", user: user1, price: 12, environment: "Outdoor")
pet4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet4.save

file = URI.open('https://easyanimals2draw.com/wp-content/uploads/2019/04/Scorpion-drawing.jpg')
pet5 = Pet.new(species: "Scorpion", name: "Apollo", user: user1, price: 32, environment: "Outdoor")
pet5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet5.save

file = URI.open('https://printablefreecoloring.com/image/animals/drawing-iguana-23.jpg')
pet6 = Pet.new(species: "Iguane", name: "Cookie", user: user1, price: 22, environment: "Both")
pet6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet6.save

file = URI.open('https://i.etsystatic.com/9475216/r/il/73de63/1417142110/il_570xN.1417142110_52i3.jpg')
pet7 = Pet.new(species: "Parrot", name: "Roger", user: user1, price: 12, environment: "Both")
pet7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet7.save

file = URI.open('https://cms-assets.tutsplus.com/uploads/users/108/posts/28935/final_image/how-to-draw-wolf-step-by-step-final.png')
pet8 = Pet.new(species: "Wolf", name: "Star", user: user1, price: 9, environment: "Both")
pet8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet8.save

file = URI.open('https://www.yedraw.com/forest-animals/bear-panda.jpg')
pet9 = Pet.new(species: "Panda", name: "Rose", user: user1, price: 6, environment: "Both")
pet9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet9.save


Pet.all.each do |pet|
  pet.name = pet.name.capitalize
  pet.save
end

Booking.create(pet: pet1, user: user4, total_price: 1000)
Booking.create(pet: pet3, user: user4, total_price: 7000)
Booking.create(pet: pet2, user: user4, total_price: 2000)
Booking.create(pet: pet4, user: user4, total_price: 7000)
Booking.create(pet: pet5, user: user4, total_price: 2000)
Booking.create(pet: pet6, user: user4, total_price: 7000)
Booking.create(pet: pet7, user: user4, total_price: 2000)
Booking.create(pet: pet8, user: user4, total_price: 2000)
Booking.create(pet: pet9, user: user4, total_price: 2000)



