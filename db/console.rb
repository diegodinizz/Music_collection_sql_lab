require("pry")
require_relative("../models/artists")
require_relative("../models/albums")


Album.delete_all()
Artist.delete_all()

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

      artist1.name = 'Red Hot Chilli Peppers'
      album1.genre = 'Punk'


      artist1.update()
      album1.update()

      album1.delete()
      artist1.delete()

      Artist.all()
      Album.all()

      Album.find(12)
      Artist.find(10)
      Album.find_by_id(12)

      album1.artist()
      
      binding.pry
      nil
