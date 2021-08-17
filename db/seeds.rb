# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require "open-uri"
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database"
UserExperience.destroy_all
Experience.destroy_all
UserQualification.destroy_all
Qualification.destroy_all
Application.destroy_all
Job.destroy_all
Organisation.destroy_all
User.destroy_all


tiago = User.create!(first_name: "Tiago", last_name: "Clarenc", email:"tiago.c@email.com", password:"123456", role: "Applicant", address: "123, Coastal Rd", city: "Grand-Baie", phone_number: "58986517", date_of_birth: Date.parse('2001-02-03'))
alex = User.create(first_name: "Alex", last_name: "Adam", email:"alex.a@email.com", password:"123456", role: "Applicant", address: "114, Royal Rd", city: "Curepipe", phone_number: "58306680", date_of_birth: Date.parse('2000-03-11'))
robert = User.create(first_name: "Robert", last_name: "Bouchet", email:"robert-bouchet@email.com", password:"123456", role: "Applicant", address: "14, Sottise Rd", city: "The Vale", phone_number: "52509086", date_of_birth: Date.parse('1999-01-01'))
lisa = User.create(first_name: "Lisa", last_name: "Schneider", email:"lisa.schneider@email.com", password:"123456", role: "Applicant", address: "45, Av. des Jacarandas", city: "Tamarin", phone_number: "54123867", date_of_birth: Date.parse('2002-06-28'))
marie = User.create(first_name: "Marie", last_name: "Victoire", email:"marie-victoire@email.com", password:"123456", role: "Applicant", address: "1, Queen Mary Avenue", city: "Vacoas-Phoenix", phone_number: "57289800", date_of_birth: Date.parse('2002-12-22'))

experience1 = Experience.create!(previous_experience: "5 monhts internship at Criteo")
experience2 = Experience.create!(previous_experience: "3 monhts internship at Google")
experience3 = Experience.create!(previous_experience: "6 monhts internship at Amazon")

prof1 = UserExperience.create(experience: experience1, user: tiago)
prof2 = UserExperience.create(experience: experience2, user: tiago)
prof3 = UserExperience.create(experience: experience3, user: robert)

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

file = URI.open('https://zenprospect-production.s3.amazonaws.com/uploads/pictures/60f53ecb5745680001848a97/picture')
KPMG = Organisation.create(name: "KPMG", address: "3 Street Labourdonais", city: "Port-Louis", phone_number: 4135577, email: "kpmg@kpmg.com", website: "kpmg.com", description: "At KPMG, our purpose is to “Inspire Confidence and Empower Change”, helping China to open its doors to the rest of the world and work with our clients to create the future. KPMG is a global organisation of independent professional services firms providing Audit, Tax and Advisory services. We operate in 146 countries and territories and in FY20 had close to 227,000 people working in member firms around the world. Each KPMG firm is a legally distinct and separate entity and describes itself as such. KPMG International Limited is a private English company limited by guarantee. KPMG International Limited and its related entities do not provide services to clients.", user: tiago)
KPMG.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
Deloitte = Organisation.create(name: "Deloitte", address: "33 Street Labourdonais", city: "Port-Louis", phone_number: 4133677, email: "deloitte@deloitte.com", website: "deloitte.com", description: "With more than 100,000 professionals, Deloitte provides audit and assurance, tax, consulting, and risk and financial advisory services to a broad cross-section of the largest corporations and governmental agencies. Our audit and assurance services can help organizations see further and deeper into their businesses. From enhancing trust in the companies we audit to assisting organizations in meeting the assurance demands outlined in regulations and standards, we help a multi-trillion dollar capital markets system function with greater confidence. An audit is more than an obligation—it’s a powerful lens for illuminating the current state of an enterprise, providing insight that can inform future aspirations.", user: alex)
SBM = Organisation.create(name: "SBM", address: "13 Street Labourdonais", city: "Ebene", phone_number: 4135687, email: "sbm@sbm.com", website: "sbm.com", description: "SBM Bank (Mauritius) Ltd is the flagship of SBM Group - a leading financial Institution in Mauritius with a well-established regional presence in India, Kenya and Madagascar. SBM Bank has MUR 229.28 billion in terms of assets with deposits totalling MUR 191.12 billion and around 540,000 customers.
SBM Bank is one of the strongest financial institutions in the country. Since its inception in 1973, SBM has grown tremendously and the bank is now well positioned in Mauritius with 40 branches and 4 counters in Mauritius and Rodrigues and employs some 1,520 staff. Additionally, with a domestic market share of 27 percent for total advances (excluding GBLs) and 21 percent for total segment A deposits as at 31 December 2020, SBM Bank (Mauritius) Ltd ranks among the top banks in Mauritius.",  user: robert)
MCB = Organisation.create(name: "MCB", address: "25 Street Labourdonais", city: "Port-Louis", phone_number: 4135688, email: "mcb@mcb.com", website: "mcb.com", description: "MCB Ltd, a subsidiary and the mainstay of MCB Group Ltd, is the longest-standing and leading banking institution in Mauritius. Over time, we have diversified our business activities across market segments and geographies. We are actively involved in various markets across sub-Saharan Africa, while remaining alert to relevant growth opportunities across the continent and beyond.",  user: lisa)
IBL =  Organisation.create(name: "IBL", address: "34 Street Labourdonais", city: "Moka", phone_number: 4135617, email: "ibl@ibl.com", website: "ibl.com", description: "A leading diversified group with a global presence. IBL is a world-class diversified group based in Mauritius and active in 19 countries worldwide. We work and invest in over 280 companies in nine industries globally. We are listed on the Stock Exchange of Mauritius.
New
5:10
IBL aims to work ethically and with integrity everywhere we operate and invest. Our purpose is to create a brighter, more sustainable world.
Our values are the bedrock of our ambitious yet principled culture. They shape how we do business, govern our group and interact with our stakeholders – from our people and partners to the communities in which we work.",  user: marie)

file = URI.open('https://zenprospect-production.s3.amazonaws.com/uploads/pictures/60f53ecb5745680001848a97/picture')
Finance_Internship = Job.create(title:"Finance Intern", description:"We are looking for a high energy, results-driven, team-oriented Finance Intern to join our rapidly growing Finance Team!
In this role, you will have the great challenge of optimizing the cash collection process.
In this role, you will be in charge of the dunning receivables, communicating with our clients worldwide, closely monitoring cash collection KPI and improving them. It is a fast-paced role that fits high energy and agile people who like challenges.", salary:25000 , duration: "1 May 2022 - 31 August 2022", organisation: KPMG, category: "Finance", deadline: "15 April 2022")
Finance_Internship.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
Marketing_Internship = Job.create(title:"Marketing Intern", description:"We are looking for talented people who are willing to build the most amazing rewards experience for consumers while keeping growing their own skills and expertise.
As Marketing & Communication intern, you will be the taking an important part of our brand and communication across all channels. You will report to the Brand & Communication Manager and you will contribute significantly in driving the company’s success by building and growing a best-in-class brand.
Your responsibilities:
Brand: You will grow and develop our consumer brand, giving it more character and depth every day, making it more inclusive so that all consumers find it loveable.
Communication: You will make sure we have a consistent brand image on all relevant touch-points and communication channels (CRM, acquisition, social, product).
Social Media: You will engage with our community and maintain good relationship with influencers.
Press Relations: You will be in charge of relations with journalists, and drive awareness by making sure that all relevant media talk about us.
Product content: You will create in-app content, giving our users the best purchase experience ever.
", salary: 17000 , duration: "1 May 2022 - 31 August 2022", organisation: Deloitte, category: "Marketing", deadline: "15 April 2022")
Accounting_Internship = Job.create(title:"Accounting Intern", description:"You will participate in the reorganisation of the reporting system and in particular the integration of foreign subsidiaries with a timetable to be respected.
You will provide support to the office management and the accounting department on :
Providing accounting documents (invoices, bank statements, etc.)
Management of bank reconciliation
Optimisation of financial processes in interaction with external accounting firms
Management of international employees’ expense reports
You will also participate in ad-hoc missions on all financial subjects (tools, reporting, etc.).", salary: 20000 , duration: "1 May 2022 - 31 August 2022", organisation: SBM, category: "Accounting", deadline: "15 April 2022")
UX_UI_Internship= Job.create(title:"UX & UI internship", description:"You will work closely with the other teams members such as Product Owners, developers, creative team… Your goal will be to design digital products (showcase websites, ecommerce, subscription websites, mobile and web applications…) for the different brands of Ontex.
You understand and challenge the brief of the client by taking into account the audience usage.
You analyse the end-users behaviours through researches and tests phases.
You know how organize the information on a website by creating a logical tree structure.
You know how to design wireframes in low or high fidelity.
You know how to use Figma.
You integrate the brand identity of each brand through a Design system.
You make the prototypes of the designs to ensure they are available for the users tests.
You meet with the different stakeholders to review and validate your work and you challenge it with the developers.
You ensure the respect of the designs when they are developed by the technical team.
You participate to the creation of the UX Process.", salary: 16000 , duration: "1 May 2022 - 31 August 2022", organisation: MCB, category: "Computing", deadline: "15 April 2022")
Corporate_Retail_Internship= Job.create(title:"Corporate_Retail_Intern", description:"The Sample Coordinator for Advertising works closely with the sample supervisor, advertising stylists, merchandise buying offices and sample traffic coordinator to facilitate the activities around the merchandise samples used for advertising production. This individual is responsible for ensuring that all needed assets and resources are identified to successfully meet the project schedule.
5:03
Coordinate vendor samples and help ensure deadlines are met for availability.
Catalog vendor samples and ensure that samples are labeled and entered into STS, Marketing Workflow and any other system used by Sample Management.
Work with merchandise buying offices to receive and process samples from turn-in meetings and acquire late samples.
Check out and pack processed samples to be shipped out to photo session.
Maintain sample storage rooms, work with buying offices as needed in sample storage rooms and dispose of aged samples.
Receive, check-in and ensure samples are returned to the sample storage room or merchant after production.", salary: 19000 , duration: "1 May 2022 - 31 August 2022", organisation: IBL, category: "Retail", deadline: "15 April 2022")

