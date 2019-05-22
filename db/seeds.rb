# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cat.destroy_all
Rental.destroy_all

iris = User.create!(username: "iris", email: "iris.wolfisberg@hotmail.fr", password: "secret")
nico = User.create!(username: "nico", email: "varonenico@gmail.com", password: "secret")
justine = User.create!(username: "justine", email: "jtincq@gmail.com", password: "secret")

url = "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558366291/lqd64liddov2csgwlsrg.jpg"
choupette = Cat.new(name: "Choupette", address: "Chemin des Pâquerettes 18", postcode: 1580, city: "Avenches", user_id: iris.id)
choupette.remote_photo_url = url
choupette.save

url = "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558446593/zoojr1nwnd31u1hhxzin.jpg"
Roblochon = Cat.new(name: "Roblochon", address: "Chemin des Pâquerettes 18", postcode: 1580, city: "Avenches", user_id: iris.id)
Roblochon.remote_photo_url = url
Roblochon.save

url = "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558451502/agata-kaczowka-1234844-unsplash_wqzjyt.jpg"
Romeo = Cat.new(name: "Romeo", address: "Avenue de la Chablière 22", postcode: 1004, city: "Lausanne", user_id: justine.id)
Romeo.remote_photo_url = url
Romeo.save

url = "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558451466/jose-munoz-687864-unsplash_ayh5le.jpg"
Biscotte = Cat.new(name: "Biscotte", address: "Avenue de la Chablière 22", postcode: 1004, city: "Lausanne", user_id: justine.id)
Biscotte.remote_photo_url = url
Biscotte.save

url = "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558451804/michael-sum-565770-unsplash_zclx5f.jpg"
Garfield = Cat.new(name: "Garfield", address: "Rue de Lausanne 50", postcode: 1900, city: "Martigny", user_id: nico.id)
Garfield.remote_photo_url = url
Garfield.save

url = "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558451467/marjan-grabowski-635827-unsplash_ws0fto.jpg"
Plume = Cat.new(name: "Plume", address: "Rue de Lausanne 50", postcode: 1900, city: "Martigny", user_id: nico.id)
Plume.remote_photo_url = url
Plume.save

Rental.create!([{ user_id: nico.id, cat_id: choupette.id, date_start: "13-06-2019", date_end: "18-06-2019" }])
