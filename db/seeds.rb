# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
List.destroy_all
List.create({name: 'The Onion',
             description: "The Onion is an American digital media company and news satire organization that publishes articles on international, national, and local news.",
             website: "http://www.theonion.com/",
             fromAddress:"TheOnionemail@theonion.com",
             category: "Comedy"
             })
List.create({name: 'Test',
            description: "Riley's test list",
            website: "http://www.listboxer.com",
            fromAddress:"riley.gelwicks@gmail.com",
            category: "News"
            })
