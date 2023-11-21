# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "deleting books"
Book.delete_all
puts "creating books"
Book.create!(
  title: "1984",
  author: "George Orwell",
  description: "it happens in 1984",
  user_id: 1, price: 2,
  image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTDqBjsQqiH8fHLE7rmp8Kesh4143AeyVOfnItvVPRpGMMSLfsx"
)
Book.create!(
  title: "ND de Paris",
  author: "Victor Hugo",
  description: "it happens in the 19th century",
  user_id: 1,
  price: 3,
  image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTDqBjsQqiH8fHLE7rmp8Kesh4143AeyVOfnItvVPRpGMMSLfsx"
)

Book.create!(
  title: "The Stranger",
  author: "Albert Camus",
description: "it happens in 20th century",
user_id: 1,
price: 4,
image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTDqBjsQqiH8fHLE7rmp8Kesh4143AeyVOfnItvVPRpGMMSLfsx"
)

Book.create!(
  title: "American Psycho",
  author: "Bret Easton Ellis",
description: "it happens in the eighties",
user_id: 2,
price: 2,
image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTDqBjsQqiH8fHLE7rmp8Kesh4143AeyVOfnItvVPRpGMMSLfsx"
)

Book.create!(title: "Shutter Island", author: "Dennis Lehane",
description: "it happens on an island",
user_id: 2,
price: 1,
image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTDqBjsQqiH8fHLE7rmp8Kesh4143AeyVOfnItvVPRpGMMSLfsx"
)

puts "Done creating"
