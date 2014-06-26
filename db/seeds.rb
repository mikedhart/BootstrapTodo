# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
["Active", "Completed", "Archived"].each{ |c| Status.create!(name: c) unless Status.where(name: c).size > 0 }
User.create!(
	email: "shipper@list.com",
	password: "pleaseletmein",
	password_confirmation: "pleaseletmein"
)
