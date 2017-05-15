# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

comic = Comic.create(
  name: "X-Force #1",
  price: 9.99,
  description: "Liefeld - Nicieza",
  image: "https://d1466nnw0ex81e.cloudfront.net/n_iv/600/858907.jpg"
)

comic = Comic.create(
  name: "Spiderman RYV #4",
  price: 3.99,
  description: "Slott - Secret Wars",
  image: "https://vignette2.wikia.nocookie.net/marveldatabase/images/b/b3/Amazing_Spider-Man_Renew_Your_Vows_Vol_1_4.jpg/revision/latest?cb=20150813224914"
)

comic = Comic.create(
  name: "Criminal: Book 1",
  price: 49.99,
  description: "Brubaker - Phillips",
  image: "https://images-na.ssl-images-amazon.com/images/I/91hsjgUvI6L.jpg"
)

comic = Comic.create(
  name: "Preacher",
  price: 29.99,
  description: "Ennis - Dillon",
  image: "https://images-na.ssl-images-amazon.com/images/I/71v7dphlO6L.jpg"
)

comic = Comic.create(
  name: "Planet Hulk",
  price: 19.99,
  description: "Greg Pak",
  image: "https://images-na.ssl-images-amazon.com/images/I/51sWFEf9CGL._SX323_BO1,204,203,200_.jpg"
)

comic = Comic.create(
  name: "Batman - 50",
  price: 4.50,
  description: "Snyder - Capullo",
  image: "https://static1.comicvine.com/uploads/original/0/6063/5110492-bm_cv50_ds.jpg"
)

comic = Comic.create(
  name: "X-Men #1",
  price: 8.75,
  description: "Lee - Claremont",
  image: "https://vignette2.wikia.nocookie.net/marveldatabase/images/3/33/X-Men_Vol_2_1_Magneto_Variant.jpg/revision/latest?cb=20091219024654"
)

comic = Comic.create(
  name: "Watchmen",
  price: 17.49,
  description: "Alan Moore",
  image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Watchmen-cover.svg/2000px-Watchmen-cover.svg.png"
)

comic = Comic.create(
  name: "Silver Surfer: Judgement Day",
  price: 17.49,
  description: "Lee - Buscema",
  image: "http://2.bp.blogspot.com/_fZ37jdy-g4M/S8uvIgViTBI/AAAAAAAAA5A/je4ZB02X8R4/s1600/Ssjd-03.jpg"
)

comic = Comic.create(
  name: "Superman: Red Son",
  price: 7.99,
  description: "Mark Millar",
  image: "https://upload.wikimedia.org/wikipedia/en/d/dd/Supermanredson.jpg"
)
