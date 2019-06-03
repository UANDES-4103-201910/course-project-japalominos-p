# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  users = [User.new( nick_name: "SuperAdmin", email: "superadmin@admin.cl", password: "12341234", admin: true, superadmin: true, name: "admin")]
for us in users do
    us.save
end



   profiles = [Profile.create(user_id: 1, bio: "SUPERADMIN", country: "Chile", city: "Santiago")]
for pr in profiles do
    pr.save
end


posts = [Post.new(user_id: 1, title: 'title', body: "body", city: 'Santiago', country: 'Chile', privacy: true, visible: true )]

for po in posts do
    po.save
end