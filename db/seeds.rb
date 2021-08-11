# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database"
UserQualification.destroy_all
Qualification.destroy_all
User.destroy_all
Organisation.destroy_all

tiago = User.create!(first_name: "Tiago", last_name: "Clarenc", email:"tiago.c@email.com", password:"123456", role: "Applicant", address: "123, Coastal Rd", city: "Grand-Baie", phone_number: "58986517", date_of_birth: Date.parse('2001-02-03'), previous_experience: "3 months internship in digital marketing")
alex = User.create(first_name: "Alex", last_name: "Adam", email:"alex.a@email.com", password:"123456", role: "Applicant", address: "114, Royal Rd", city: "Curepipe", phone_number: "58306680", date_of_birth: Date.parse('2000-03-11'), previous_experience: "1 months internship in finance")
robert = User.create(first_name: "Robert", last_name: "Bouchet", email:"robert-bouchet@email.com", password:"123456", role: "Applicant", address: "14, Sottise Rd", city: "The Vale", phone_number: "52509086", date_of_birth: Date.parse('1999-01-01'), previous_experience: "Worked in retail for 3 weeks")
lisa = User.create(first_name: "Lisa", last_name: "Schneider", email:"lisa.schneider@email.com", password:"123456", role: "Applicant", address: "45, Av. des Jacarandas", city: "Tamarin", phone_number: "54123867", date_of_birth: Date.parse('2002-06-28'), previous_experience: "Computer Science internship")
marie = User.create(first_name: "Marie", last_name: "Victoire", email:"marie-victoire@email.com", password:"123456", role: "Applicant", address: "1, Queen Mary Avenue", city: "Vacoas-Phoenix", phone_number: "57289800", date_of_birth: Date.parse('2002-12-22'), previous_experience: "Fashion and design")


management = Qualification.create(qualification_category: "Bachelor", qualification_value: "in Management")
finance = Qualification.create(qualification_category: "Bachelor", qualification_value: "in Finance")
marketing = Qualification.create(qualification_category: "Bachelor", qualification_value: "in Marketing")
french = Qualification.create(qualification_category: "Languages", qualification_value: "French")
english = Qualification.create(qualification_category: "Languages", qualification_value: "English")
spanish = Qualification.create(qualification_category: "Languages", qualification_value: "Spanish")




profile1 = UserQualification.create(qualification: management, user: tiago)
profile2 = UserQualification.create(qualification: finance, user: alex)
profile3 = UserQualification.create(qualification: marketing, user: robert)
profile4 = UserQualification.create(qualification: french, user: lisa)
profile5 = UserQualification.create(qualification: management, user: marie)

KPMG = Organisation.create(name: "KPMG" address: "3 Street Labourdonais" city: "Port-Louis" phone_number: 4135577 email: "kpmg@kpmg.com" website: "kpmg.com" description: "work with the best" user: tiago)
Deloitte = Organisation.create(name: "Deloitte" address: "33 Street Labourdonais" city: "Port-Louis" phone_number: 4133677 email: "deloitte@deloitte.com" website: "deloitte.com" description: "work with the best"  user: alex)
SBM = Organisation.create(name: "SBM" address: "13 Street Labourdonais" city: "Ebene" phone_number: 4135687 email: "sbm@sbm.com" website: "sbm.com" description: "work with the best"  user: robert)
MCB = Organisation.create(name: "MCB" address: "25 Street Labourdonais" city: "Port-Louis" phone_number: 4135688 email: "mcb@mcb.com" website: "mcb.com" description: "work with the best"  user: lisa)
IBL =  Organisation.create(name: "IBL" address: "34 Street Labourdonais" city: "Moka" phone_number: 4135617 email: "ibl@ibl.com" website: "ibl.com" description: "work with the best"  user: marie)

