puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:     "french",

  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    category:     "french",
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    category:     "italian",
  },
  {
    name:         "La Friterie",
    address:      "route de Suresnes 75016 Paris",
    category:     "belgian",
  },
  {
    name:         "Ban Bao",
    address:      "route de Franz 75011 Paris",
    category:     "japanese",
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
