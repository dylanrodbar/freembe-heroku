# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#5.times do
#  subcategory = Subcategory.create({name: Faker::Name.name, description: Faker::Name.name, photo: "https://res.cloudinary.com/poppycloud/image/upload/v1526809567/z5mgz0dcea3tv5qe1fln.png"})
#end
#
#
user = User.create({name: "admin", email: "admin1234@gmail.com", password: "Admin123456", photo: "https://res.cloudinary.com/poppycloud/image/upload/v1528189893/wacukhrblsxdcwsbmrqi.jpg", type: "Admin"})
#@user = User.new({name: "admin", email: "admin123@gmail.com", password: "Admin12345", photo: "https://res.cloudinary.com/poppycloud/image/upload/v1528189893/wacukhrblsxdcwsbmrqi.jpg"})
#@user.save