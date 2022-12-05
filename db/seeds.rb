# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating Users ...."
users=User.create([
    {username:"Salt",
    password:"password",
    fullname:"Salt",
    email:"a@gmail.com",
    image_url:"https://static.wikia.nocookie.net/disney/images/7/7d/Profile_-_Moana.png/revision/latest?cb=20190312030033"
},
{
    username:"Admin",
    password:"password",
    fullname:"Admin",
    email:"xxxx@gmail.com",
    image_url:"https://static.wikia.nocookie.net/disney/images/7/7d/Profile_-_Moana.png/revision/latest?cb=20190312030033"
},
{
    username:"User",
    password:"password",
    fullname:"User",
    email:"xy@gmail.com",
    image_url:"https://static.wikia.nocookie.net/disney/images/7/7d/Profile_-_Moana.png/revision/latest?cb=20190312030033"
}

])
puts "Creating books..."
10.times do
Book.create(
        title:Faker::Book.title,
        author:Faker::Book.author,
        publication_year:2008,
        # Faker::Number.between(1918,2022),
        genre:['Comic','Romance','Anime','Financial'],
        user_id:rand(1..10))
end
puts "Seeding done!"