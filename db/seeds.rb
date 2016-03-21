# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Figure.destroy_all
Home.destroy_all

olympus = Home.create(name:"Olympus", greek_name:"Ὄλυμπος", description:"Home of the gods", img_url:"")
phthia = Home.create(name:"Phthia", greek_name:"Φθία", description:"Homeland of the Myrmidons", img_url:"")
pylos = Home.create(name:"Pylos", greek_name:"Πύλος", description:"Home of Nestor", img_url:"")
troy = Home.create(name:"Troy", greek_name:"Τροία ἤ Ἴλιον", description:"Home of the Trojans, also known as Ilium", img_url:"")


achilles = Figure.create(name:"Achilles", greek_name:"Ἀχιλλεύς", epithets:"swift-footed, godlike, lion-hearted", description:"Best of the Achaeans", is_mortal:true, img_url:"", home:phthia, allegiance:"Greeks")
zeus = Figure.create(name:"Zeus", greek_name:"Ζεύς", epithets:"cloud-gatherer, wide-seeing, Aegis-holding", description:"King of the gods", is_mortal:false, img_url:"", home:olympus, allegiance:"Neutral")
nestor = Figure.create(name:"Nestor", greek_name:"Νέστωρ Γερήνιος", epithets:"son of Neleus, Gerenian charioteer",
description:"King of Pylos", is_mortal:true, img_url:"", home:pylos, allegiance:"Greeks")
hector = Figure.create(name:"Hector", greek_name:"Ἕκτωρ", epithets:"man-killing, horse-taming", description:"Greatest champion of the Trojans", is_mortal: true, img_url:"", home:troy, allegiance:"Trojans")
