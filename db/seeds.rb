# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!([{ username: "iris", email: "iris.wolfisberg@hotmail.fr", password: "secret" }])
User.create!([{ username: "nico", email: "varonenico@gmail.com", password: "secret" }])
User.create!([{ username: "justine", email: "jtincq@gmail.com", password: "secret" }])

Cat.create!([{ name: "Choupette", address: "Chemin des Pâquerettes 18, 1580 Avenches", user_id: 1 }])
Cat.create!([{ name: "Biscotte", address: "Rue de Carroz-Devant 3, 1844 Villeneuve", user_id: 1 }])

Rental.create!([{ user_id: 1, cat_id: 1, date_start: "13-06-2019", date_end: "18-06-2019" }])
