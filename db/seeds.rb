# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Timetables.delete_all
Venues.delete_all
Gigs.delete_all



#Venues

Venue.create(name: 'Hydro', capacity: 200, venue_image: 'http://www.clydewaterfront.com/media/128725/d152_hydro_19587_mi1.jpg')



#Gigs

Gig.create(name: 'Jazebells', category: 'Folk', gig_image: 'http://www.billboard.com/files/video/1125911414_1792674597001_2509219-the-jezabels-tastemakers-8-617-409.jpg')




#Timetables





#Users




#






