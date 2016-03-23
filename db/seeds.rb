# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Figure.destroy_all
Home.destroy_all
User.destroy_all

User.create(email:"admin@iliad.info", password:"administrator")

olympus = Home.create(name:"Olympus", greek_name:"Ὄλυμπος", description:"Home of the gods", img_url:"http://i.imgur.com/l7pffPO.jpg")
phthia = Home.create(name:"Phthia", greek_name:"Φθία", description:"Homeland of the Myrmidons", img_url:"http://i.imgur.com/xtxr9Sq.jpg")
pylos = Home.create(name:"Pylos", greek_name:"Πύλος", description:"Home of Nestor", img_url:"http://i.imgur.com/MATq2P8.jpg")
troy = Home.create(name:"Troy", greek_name:"Τροία ἤ Ἴλιον", description:"Home of the Trojans, also known as Ilium", img_url:"http://i.imgur.com/V1zcrrc.jpg")
sparta = Home.create(name:"Sparta", greek_name:"Σπάρτα ἤ Λακεδαίμων", description:"City from which Helen was abducted by Paris", img_url:"http://i.imgur.com/OPhPx3g.jpg")

Figure.create(name:"Achilles", greek_name:"Ἀχιλλεύς", epithets:"swift-footed, godlike, lion-hearted", description:"Best of the Achaeans", is_mortal:true, img_url:"http://i.imgur.com/d7kEyQJ.jpg", home:phthia, allegiance:"Greeks")
Figure.create(name:"Zeus", greek_name:"Ζεύς", epithets:"cloud-gatherer, wide-seeing, Aegis-holding", description:"King of the gods", is_mortal:false, img_url:"http://i.imgur.com/kBxan28.jpg", home:olympus, allegiance:"Neutral")
Figure.create(name:"Nestor", greek_name:"Νέστωρ Γερήνιος", epithets:"son of Neleus, Gerenian charioteer",
description:"King of Pylos", is_mortal:true, img_url:"http://i.imgur.com/rpkngjH.jpg", home:pylos, allegiance:"Greeks")
Figure.create(name:"Hector", greek_name:"Ἕκτωρ", epithets:"man-killing, horse-taming", description:"Greatest champion of the Trojans", is_mortal: true, img_url:"http://i.imgur.com/9i5OuD4.jpg", home:troy, allegiance:"Trojans")
Figure.create(name:"Menelaus", greek_name:"Μενέλαος", epithets:"war-like, red-haired", description:"King of the Lacedaimonians and husband of Helen", is_mortal: true, img_url:"http://i.imgur.com/YlpPZBP.jpg", home:sparta, allegiance:"Greeks")
Figure.create(name:"Poseidon", greek_name:"Ποσειδῶν", epithets:"earth-shaker, earth-moving", description:"God of the sea and of earthquakes", is_mortal: false, img_url:"http://i.imgur.com/yEIl2UT.jpg", home:olympus, allegiance:"Greeks")
