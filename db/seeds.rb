CartedProduct.create!([
  {user_id: 2, status: "purchased", quantity: 4, order_id: nil, comic_id: 6},
  {user_id: 2, status: "purchased", quantity: 3, order_id: nil, comic_id: 1},
  {user_id: 2, status: "purchased", quantity: 1, order_id: nil, comic_id: 4},
  {user_id: 2, status: "purchased", quantity: 32, order_id: nil, comic_id: 7},
  {user_id: 2, status: "purchased", quantity: 34, order_id: 6, comic_id: 7},
  {user_id: 2, status: "removed", quantity: 12, order_id: nil, comic_id: 2},
  {user_id: 2, status: "carted", quantity: 3, order_id: nil, comic_id: 1},
  {user_id: 2, status: "carted", quantity: 32, order_id: nil, comic_id: 1}
])
Comic.create!([
  {name: "X-Force #1", image: "https://d1466nnw0ex81e.cloudfront.net/n_iv/600/858907.jpg", description: "Liefeld - Nicieza", price: "9.99"},
  {name: "Spiderman RYV #4", image: "https://vignette2.wikia.nocookie.net/marveldatabase/images/b/b3/Amazing_Spider-Man_Renew_Your_Vows_Vol_1_4.jpg/revision/latest?cb=20150813224914", description: "Slott - Secret Wars", price: "3.99"},
  {name: "Criminal: Book 1", image: "https://images-na.ssl-images-amazon.com/images/I/91hsjgUvI6L.jpg", description: "Brubaker - Phillips", price: "49.99"},
  {name: "Preacher", image: "https://images-na.ssl-images-amazon.com/images/I/71v7dphlO6L.jpg", description: "Ennis - Dillon", price: "29.99"},
  {name: "Planet Hulk", image: "https://images-na.ssl-images-amazon.com/images/I/51sWFEf9CGL._SX323_BO1,204,203,200_.jpg", description: "Greg Pak", price: "19.99"},
  {name: "Batman - 50", image: "https://static1.comicvine.com/uploads/original/0/6063/5110492-bm_cv50_ds.jpg", description: "Snyder - Capullo", price: "4.5"},
  {name: "X-Men #1", image: "https://vignette2.wikia.nocookie.net/marveldatabase/images/3/33/X-Men_Vol_2_1_Magneto_Variant.jpg/revision/latest?cb=20091219024654", description: "Lee - Claremont", price: "8.75"},
  {name: "Watchmen", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Watchmen-cover.svg/2000px-Watchmen-cover.svg.png", description: "Alan Moore", price: "17.49"},
  {name: "Silver Surfer: Judgement Day", image: "http://2.bp.blogspot.com/_fZ37jdy-g4M/S8uvIgViTBI/AAAAAAAAA5A/je4ZB02X8R4/s1600/Ssjd-03.jpg", description: "Lee - Buscema", price: "17.49"},
  {name: "Superman: Red Son", image: "https://upload.wikimedia.org/wikipedia/en/d/dd/Supermanredson.jpg", description: "Mark Millar", price: "7.99"}
])
Order.create!([
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: "59.96", tax: "5.4", total: "65.36"},
  {user_id: 2, subtotal: "59.96", tax: "5.4", total: "65.36"},
  {user_id: 2, subtotal: "59.96", tax: "5.4", total: "65.36"},
  {user_id: 2, subtotal: "280.0", tax: "25.2", total: "305.2"},
  {user_id: 2, subtotal: "297.5", tax: "26.78", total: "324.28"}
])
User.create!([
  {name: "andrew", email: "andrew@email.com", password_digest: "$2a$10$fc6HjJ8cD6kNC02zH6XVSOF1SMWD0NjZyFtqag5l3/ENMO/KXd9FS"},
  {name: "andrew", email: "andrew@email.com", password_digest: "$2a$10$OJ8NnFXG/0PuJLy7ZBOEnevyVzmycxlVRFj6sHeFcvjiEkUtVZdfm"}
])
