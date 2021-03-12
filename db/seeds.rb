# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: "Singer_01", bio: "Bio_01")
Artist.create(name: "Singer_02", bio: "Bio_02")
Artist.create(name: "Singer_03", bio: "Bio_03")

Genre.create(name: "Pop")
Genre.create(name: "Country")
Genre.create(name: "Rock")

Song.create(name: "Song_01", artist_id: 1, genre_id: 1)
Song.create(name: "Song_02", artist_id: 1, genre_id: 2)
Song.create(name: "Song_03", artist_id: 2, genre_id: 3)
Song.create(name: "Song_04", artist_id: 2, genre_id: 1)
Song.create(name: "Song_05", artist_id: 3, genre_id: 2)
Song.create(name: "Song_06", artist_id: 3, genre_id: 3)
