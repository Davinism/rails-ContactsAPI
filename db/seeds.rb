# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.all.destroy_all
Contact.all.destroy_all
ContactShare.all.destroy_all

user_1 = User.create!(user_name: "john_cena")
user_2 = User.create!(user_name: "bruce_wayne")
contact_1 = Contact.create!(name: "John Cena", email: "johncena@hotmail.com", user_id: user_1.id)
contact_2 = Contact.create!(name: "Bruce Wayne", email: "brucewayne@hotmail.com", user_id: user_2.id)
contact_share_1 = ContactShare.create!(user_id: user_1.id, contact_id: contact_2.id)
contact_share_2 = ContactShare.create!(user_id: user_2.id, contact_id: contact_1.id)

comment_1 = Comment.create!(text: "Do you know how I got these scars?", owner_id: user_2.id)
comment_2 = Comment.create!(text: "Is it smackdown weekend?", owner_id: contact_1.id)
