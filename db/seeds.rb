# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
puts "deleting books"
Book.delete_all
puts "deleting Users"
User.delete_all
puts "creating Users"
user1 = User.create(email: "admin@admin.com", password: "123123", username: "admin")
user2 = User.create(email: "guest@guest.com", password: "123123", username: "guest")
#   end
puts "creating books"
Book.create!(
  title: "1984",
  author: "George Orwell",
  description: "1984 is a dystopian novel that was written by George Orwell and published in 1949. It tells the story of Winston Smith, a citizen of the miserable society of Oceania, who is trying to rebel against the Party and its omnipresent symbol, Big Brother.",
  user_id: user1.id,
  price: 2,
  image_url: "https://upload.wikimedia.org/wikipedia/en/5/51/1984_first_edition_cover.jpg",
  address: "Amsterdam"

)
Book.create!(
  title: "ND de Paris",
  author: "Victor Hugo",
  description: "It is the story of Quasimodo, the deformed bell-ringer of the Notre Dame Cathedral, who falls in love with the beautiful gypsy Esmeralda. When Esmeralda is condemned as a witch by Claude Frollo, the tormented archdeacon who lusts after her, Quasimodo attempts to save her; but his intentions are misunderstood.",
  user_id: user1.id,
  price: 3,
  image_url: "https://m.media-amazon.com/images/I/81fkXtUvXwL._AC_UF1000,1000_QL80_.jpg",
  address: "Den Haag"
)

Book.create!(
  title: "The Stranger",
  author: "Albert Camus",
  description: "
  The first of Camus' novels published in his lifetime, the story follows Meursault, an indifferent settler in French Algeria, who, weeks after his mother's funeral, kills an unnamed Arab man in Algiers. The story is divided into two parts, presenting Meursault's first-person narrative before and after the killing.",
  user_id: user1.id,
  price: 4,
  image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/L%27%C3%89tranger_-_Albert_Camus.jpg/440px-L%27%C3%89tranger_-_Albert_Camus.jpg",
  address: "Zoetermeer"
)

Book.create!(
  title: "American Psycho",
  author: "Bret Easton Ellis",
  description: "American Psycho is a novel by American writer Bret Easton Ellis, published in 1991. The story is told in the first-person by Patrick Bateman, a wealthy, narcissistic, vain Manhattan investment banker who supposedly lives a double life as a serial killer.",
  user_id: user2.id,
  price: 2,
  image_url: "https://upload.wikimedia.org/wikipedia/en/b/b5/American_Psycho_by_Bret_Easton_Ellis_first_US_paperback_edition_1991.jpg",
  address: "Rotterdam"
)

Book.create!(
  title: "Shutter Island",
  author: "Dennis Lehane",
  description: "U.S. Marshal Teddy Daniels has come to Shutter Island, home of Ashecliffe Hospital for the Criminally Insane. Along with his partner, Chuck Aule, he sets out to find an escaped patient, a murderess named Rachel Solando, as a hurricane bears down upon them. But nothing at Ashecliffe Hospital is what it seems.",
  user_id: user2.id,
  price: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/a/a2/Shutter_Island_book_cover.jpg",
  address: "Leiden"
)

puts "Done creating"
