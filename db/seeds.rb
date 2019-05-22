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

def create_cat(name, street, zip, city, id, url)
  cat = Cat.new(name: name, street: street, postcode: zip, city: city, user_id: id)
  cat.remote_photo_url = url
  cat.save
end


create_cat("Choupette", "Chemin des Pâquerettes 18", "1580", "Avenches", iris.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558366291/lqd64liddov2csgwlsrg.jpg")
create_cat("Roblochon", "Chemin des Pâquerettes 18", "1580", "Avenches", iris.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558446593/zoojr1nwnd31u1hhxzin.jpg")
create_cat("Romeo", "Avenue de la Chablière 22", "1004", "Lausanne", justine.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558451502/agata-kaczowka-1234844-unsplash_wqzjyt.jpg")
create_cat("Biscotte", "Avenue de la Chablière 22", "1004", "Lausanne", justine.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558451466/jose-munoz-687864-unsplash_ayh5le.jpg")
create_cat("Garfield", "Rue de Lausanne 50", "1900", "Martigny", nico.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558451804/michael-sum-565770-unsplash_zclx5f.jpg")
create_cat("Plume", "Rue de Lausanne 50", "1900", "Martigny", nico.id, "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558451467/marjan-grabowski-635827-unsplash_ws0fto.jpg")
