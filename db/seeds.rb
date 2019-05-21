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

iris = User.create!([{ username: "iris", email: "iris.wolfisberg@hotmail.fr", password: "secret" }])
nico = User.create!([{ username: "nico", email: "varonenico@gmail.com", password: "secret" }])
justine = User.create!([{ username: "justine", email: "jtincq@gmail.com", password: "secret" }])

url = "https://res.cloudinary.com/ddnihwuhu/image/upload/v1558366291/lqd64liddov2csgwlsrg.jpg"
choupette = Cat.new( name: "Choupette", address: "Chemin des Pâquerettes 18, 1580 Avenches", user_id: iris.id )
choupette.remote_photo_url = url
choupette.save

# Cat.create!([{ name: "Roblochon", address: "Chemin des Pâquerettes 18, 1580 Avenches", user_id: nico[0][:id], photo: "https://source.unsplash.com/random" }])
# Cat.create!([{ name: "Biscotte", address: "Rue de Carroz-Devant 3, 1844 Villeneuve", user_id: nico[0][:id], photo: "https://source.unsplash.com/random" }])
# Cat.create!([{ name: "Romeo", address: "Rue de Carroz-Devant 3, 1844 Villeneuve", user_id: justine[0][:id], photo: "https://source.unsplash.com/random" }])
# Cat.create!([{ name: "Garfield", address: "Avenue de la Chablière 22, 1004 Lausanne", user_id: justine[0][:id], photo: "https://source.unsplash.com/random" }])
# Cat.create!([{ name: "Plume", address: "Rue de Carroz-Devant 3, 1844 Villeneuve", user_id: nico[0][:id], photo: "https://source.unsplash.com/random" }])
# Cat.create!([{ name: "Zazou", address: "Rue de Carroz-Devant 3, 1844 Villeneuve", user_id: justine[0][:id], photo: "https://source.unsplash.com/random" }])
# Cat.create!([{ name: "Lola", address: "Avenue de la Chablière 22, 1004 Lausanne", user_id: iris[0][:id], photo: "https://source.unsplash.com/random" }])
# Cat.create!([{ name: "Pistach", address: "Rue de Carroz-Devant 3, 1844 Villeneuve", user_id: nico[0][:id], photo: "https://source.unsplash.com/random" }])
# Cat.create!([{ name: "Caramel", address: "Rue de Carroz-Devant 3, 1844 Villeneuve", user_id: justine[0][:id], photo: "https://source.unsplash.com/random" }])
# Cat.create!([{ name: "Jean-Louis", address: "Avenue de la Chablière 22, 1004 Lausanne", user_id: iris[0][:id], photo: "https://source.unsplash.com/random" }])

Rental.create!([{ user_id: nico[0][:id], cat_id: choupette[0][:id], date_start: "13-06-2019", date_end: "18-06-2019" }])
