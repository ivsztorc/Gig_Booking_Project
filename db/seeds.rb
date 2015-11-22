# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Timetable.delete_all
Venue.delete_all
Gig.delete_all
User.delete_all



#Venues

venue = Venue.create!(name: 'Hydro', capacity: 200, venue_image: 'http://www.clydewaterfront.com/media/128725/d152_hydro_19587_mi1.jpg')



#Gigs

gig = Gig.create!(name: 'Jazebells', category: 'Folk', remote_gig_image_url: 'http://www.billboard.com/files/video/1125911414_1792674597001_2509219-the-jezabels-tastemakers-8-617-409.jpg')

Gig.create!(name: 'Awesome Gig', category: 'Folk', gig_image: File.open("/Users/user/Documents/Iwona Sztorc/Images/Festival App/Rock-Guitar-icon.png"))


#Timetables

timetable = Timetable.create!(timetable_date: Time.now)
timetable.gig = gig
timetable.venue = venue
timetable.save!


#Users

user = User.create!(email: "codei@gmail.com", role: "admin", password: "password", password_confirmation: "password")



#






