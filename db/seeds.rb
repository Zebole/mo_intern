# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database"
User.destroy_all
Organisation.destroy_all

# a = User.create(first_name: last_name: address: city: phone_number: date_of_birth: )
# b = User.create()
# c = User.create()
# d = User.create()
# e = User.create()

KPMG = Organisation.create(name: "KPMG" address: "3 Street Labourdonais" city: "Port-Louis" phone_number: 4135577 email: "kpmg@kpmg.com" website: "kpmg.com" description: "work with the best" user: a)
Deloitte = Organisation.create(name: "Deloitte" address: "33 Street Labourdonais" city: "Port-Louis" phone_number: 4133677 email: "deloitte@deloitte.com" website: "deloitte.com" description: "work with the best"  user: b)
SBM = Organisation.create(name: "SBM" address: "13 Street Labourdonais" city: "Ebene" phone_number: 4135687 email: "sbm@sbm.com" website: "sbm.com" description: "work with the best"  user: c)
MCB = Organisation.create(name: "MCB" address: "25 Street Labourdonais" city: "Port-Louis" phone_number: 4135688 email: "mcb@mcb.com" website: "mcb.com" description: "work with the best"  user: d)
IBL =  Organisation.create(name: "IBL" address: "34 Street Labourdonais" city: "Moka" phone_number: 4135617 email: "ibl@ibl.com" website: "ibl.com" description: "work with the best"  user: e)


