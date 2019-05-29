# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
   superadmin = User.create(id: 12, nick_name: "SuperAdmin", email: "jaco2pv@live.cl", password: "12341234", admin: true, superadmin: true, name: "Joaquin")




   profilesuperadmin = Profile.create(user_id: 12, bio: "SUPERADMIN", country: "Chile", city: "Santiago")



#Post.create({title: 'title', body: "body",city: 'Santiago', country: 'Chile', privacy: true, visible: true, mark: true })