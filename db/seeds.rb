# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy all"
User.destroy_all
Cat.destroy_all
Rental.destroy_all

puts "create user"

iris    = User.create!(username: "iris",    email: "iris.wolfisberg@hotmail.fr", password: "secret")
nico    = User.create!(username: "nico",    email: "varonenico@gmail.com",       password: "secret")
justine = User.create!(username: "justine", email: "jtincq@gmail.com",           password: "secret")

puts "create cat"

def create_cat(name, description, street, zip, city, id, url)
  cat = Cat.new(name: name, description: description, street: street, postcode: zip, city: city, user_id: id)
  cat.remote_photo_url = url
  cat.save
end

lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus ratione nam velit, a eveniet earum, fugit laudantium voluptates suscipit qui quisquam aspernatur officia repellat quaerat provident. Hic, nisi voluptates ducimus."

create_cat("Choupette", "Choupette est une chatte de goutière blanche aux yeux bleus. Elle est très sage et câline. #{lorem_ipsum}", "Chemin des Pâquerettes 18", "1580", "Avenches", iris.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/c_scale,h_500/v1558686807/hjtnuniyrkuczgf2x8w7.jpg")
create_cat("Roblochon", "Roblochon rafolle du lait. La preuve, le matin si il n'a pas son bol il boude. #{lorem_ipsum}", "Chemin des Pâquerettes 18", "1580", "Avenches", iris.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/c_scale,h_500/v1558686808/xhved8nftq4ebnrtqqvc.jpg")
create_cat("Romeo", "Romeo adore jouer et courir dans toute la maison. Parfois, il fonce dans les murs. #{lorem_ipsum}", "Avenue de la Chablière 22", "1004", "Lausanne", justine.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/c_scale,h_500/v1558686806/d6aipe05zpt6e4bh3og2.jpg")
create_cat("Biscotte", "Biscotte est très joueuse et très sociable. Elle sait aussi ce qu'elle veut. #{lorem_ipsum}", "Avenue de la Chablière 22", "1004", "Lausanne", justine.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/c_scale,h_500/v1558686805/myxwgfkouq1jzgujhtv1.jpg")
create_cat("Garfield", "Garfield louche un peu. Il adore manger, regarder la télé et dormir toute la journée. #{lorem_ipsum}", "Avenue de Fully 14", "1920", "Martigny", nico.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/c_scale,h_500/v1558451503/anton-darius-thesollers-504936-unsplash_1_hz8bq5.jpg")
create_cat("Plume", "Plume est très coquette. Elle est belle et elle le sait. Elle aime plaire aux autres matous. #{lorem_ipsum}", "Avenue de Fully 14", "1920", "Martigny", nico.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/c_scale,h_500/v1558686802/hxaz2ydb46jczo91indo.jpg")
