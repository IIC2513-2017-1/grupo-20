# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(name: 'mati', mail: 'mieynaudi@uc.cl')
u2 = User.create(name: 'pepe', mail: 'ppeynaudi@uc.cl')

r1 = Rifa.create(owner: u1.name, price: 1000, numbers: 10, user_id: u1.id)
r2 = Rifa.create(owner: u2.name, price: 1500, numbers: 15, user_id: u1.id)
