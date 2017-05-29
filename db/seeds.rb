# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Rifa.destroy_all
Prize.destroy_all

u1 = User.new(name: 'mati',
              mail: 'mieynaudi@uc.cl',
              password: '1234',
              admin: false)
u2 = User.new(name: 'pepe',
              mail: 'ppeynaudi@uc.cl',
              password: '1234',
              admin: false)
u3 = User.new(name: 'admin',
              mail: 'admin@admin.cl',
              password: 'admin',
              admin: true)
u4 = User.new(name: 'carlos',
              mail: 'carlos@uc.cl',
              password: '1234',
              admin: false)
u5 = User.new(name: 'felipe',
              mail: 'felipe@gmail.cl',
              password: '1234',
              admin: false)
u6 = User.new(name: 'jon',
              mail: 'jon@snow.cl',
              password: '1234',
              admin: false)

# user jon no tiene profile pic
File.open(Rails.root  + "app/assets/images/perfil1.png") do |f|
  u1.avatar = f
  u2.avatar = f
  u3.avatar = f
  u4.avatar = f
  u5.avatar = f
end
u1.save!
u2.save!
u3.save!
u4.save!
u5.save!


r1 = Rifa.create(owner: u1.name,
                 price: 1000,
                 numbers: 800,
                 user_id: u1.id,
                 title:"Celulares",
                 end_date: DateTime.new(2017,7,3,4,5,6))
r2 = Rifa.create(owner: u2.name,
                 price: 2000,
                 numbers: 100,
                 user_id: u2.id,
                 title:"iPhone 7",
                 end_date: DateTime.new(2017,8,3,4,5,6))
r3 = Rifa.create(owner: u4.name,
                 price: 5000,
                 numbers: 300,
                 user_id: u4.id,
                 title:"Tele",
                 end_date: DateTime.new(2017,8,3,4,5,6))
r4 = Rifa.create(owner: u5.name,
                 price: 2000,
                 numbers: 300,
                 user_id: u5.id,
                 title:"PS4",
                 end_date: DateTime.new(2017,8,3,4,5,6))
r5 = Rifa.create(owner: u6.name,
                 price: 10000,
                 numbers: 2000,
                 user_id: u6.id,
                 title:"Auto",
                 end_date: DateTime.new(2017,8,3,4,5,6))
r6 = Rifa.create(owner: u5.name,
                 price: 2000,
                 numbers: 500,
                 user_id: u5.id,
                 title:"Bicicletas",
                 end_date: DateTime.new(2017,8,3,4,5,6))
r7 = Rifa.create(owner: u2.name,
                 price: 500,
                 numbers: 1000,
                 user_id: u2.id,
                 title:"Tele",
                 end_date: DateTime.new(2017,8,3,4,5,6))
r8 = Rifa.create(owner: u4.name,
                 price: 2000,
                 numbers: 800,
                 user_id: u4.id,
                 title:"Sillones",
                 end_date: DateTime.new(2017,8,3,4,5,6))
r9 = Rifa.create(owner: u5.name,
                 price: 1500,
                 numbers: 300,
                 user_id: u5.id,
                 title:"Mesa",
                 end_date: DateTime.new(2017,8,3,4,5,6))
r10 = Rifa.create(owner: u1.name,
                 price: 2500,
                 numbers: 600,
                 user_id: u1.id,
                 title:"iPad",
                 end_date: DateTime.new(2017,8,3,4,5,6))





p1 = Prize.create(rifa_id: 1, importance: 1, name: 'iPhone 6')
p2 = Prize.create(rifa_id: 1, importance: 2, name: 'iPhone 5')
p3 = Prize.create(rifa_id: 1, importance: 3, name: 'iPhone 4')
p4 = Prize.create(rifa_id: 2, importance: 1, name: 'iPhone 7')
p5 = Prize.create(rifa_id: 3, importance: 1, name: 'Televisor Samsung')
p6 = Prize.create(rifa_id: 4, importance: 1, name: 'Play Station 4')
p7 = Prize.create(rifa_id: 5, importance: 1, name: 'Hyundai accent 1.6')
p8 = Prize.create(rifa_id: 6, importance: 1, name: 'Bici Bianchi')
p9 = Prize.create(rifa_id: 6, importance: 2, name: 'Bici Treck')
p10 = Prize.create(rifa_id: 7, importance: 1, name: 'Televisor Sony')
p11 = Prize.create(rifa_id: 8, importance: 1, name: 'Sillon de cuero')
p11 = Prize.create(rifa_id: 8, importance: 2, name: 'Sillon de tela')
p12 = Prize.create(rifa_id: 9, importance: 1, name: 'Mesa de vidrio')
p13 = Prize.create(rifa_id: 10, importance: 1, name: 'iPad air 3')

