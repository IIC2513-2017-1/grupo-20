# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.new(name: 'mati', mail: 'mieynaudi@uc.cl', password: '1234')
File.open(Rails.root  + "app/assets/images/perfil1.png") do |f|
  u1.avatar = f
end
u1.save!

u2 = User.new(name: 'pepe', mail: 'ppeynaudi@uc.cl', password: '12345')
File.open(Rails.root  + "app/assets/images/perfil1.png") do |f|
  u2.avatar = f
end
u2.save!


r1 = Rifa.create(owner: u1.name, price: 1000, numbers: 10, user_id: u1.id, title:"Celulares varios",
                 end_date: DateTime.new(2017,7,3,4,5,6))
r2 = Rifa.create(owner: u2.name, price: 1500, numbers: 15, user_id: u2.id, title:"iPhone 7",
                 end_date: DateTime.new(2017,8,3,4,5,6))

p1 = Prize.create(rifa_id: 1, importance: 1, name: 'iPhone 6')
p2 = Prize.create(rifa_id: 1, importance: 2, name: 'iPhone 5')
p3 = Prize.create(rifa_id: 2, importance: 1, name: 'iPhone 7')
