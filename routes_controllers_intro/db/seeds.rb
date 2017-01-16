# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
u1 = User.create(username: "tassosb")
u2 = User.create(username: "blahahah")

Contact.destroy_all
c1 = Contact.create(name: "Tassos", email: "t@gmail.com", user_id: u1.id)
c2 = Contact.create(name: "Jiahao", email: "j@gmail.com", user_id: u2.id)
c3 = Contact.create(name: "Jiahao", email: "jay@yahoo.com", user_id: u2.id)

ContactShare.destroy_all
cs_1 = ContactShare.create(user_id: u2.id, contact_id: c1.id)
cs_2 = ContactShare.create(user_id: u1.id, contact_id: c3.id)
