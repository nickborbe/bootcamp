# t.string :artist
#       t.string :venue
#       t.string :city
#       t.datetime :date
#       t.decimal :price
#       t.text :description


Concert.create(artist: "G-Eazy", city: "Oakland", venue: "Fox Theatre", date: (DateTime.now + 2.hours), price: 65.00, description: "G-Eazy comes back to Oakland's Fox Theatre to represent his hometown." )
Concert.create(artist: "Yonder Mountain String Band", city: "San Francisco", venue: "The Fillmore", date: (DateTime.now + 1.hour), price: 45.00)
Concert.create(artist: "Kendrick Lamar", city: "San Francisco", venue: "Golden Gate Park", date: (DateTime.now + 4.hours), price: 75.00, description: "Kendrick Lamar returns to Golden Gate Park for an encore performance of his set during Outsidelands Music Festival.")
