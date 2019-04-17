require("pry")
require_relative("../models/artists")
require_relative("../models/albums")


artists = Album.delete_all()
artists = Artist.delete_all()

artist1 = Artist.new(
  {
  'name' => 'Ben'
  })

  artist1.save()

  album1 = Album.new( {
    'title' => 'Californication',
    'genre' => 'Rock',
    'artist_id' => artist1.id
    })

    album1.save()


  binding.pry
  nil
