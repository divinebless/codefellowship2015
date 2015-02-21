# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(
	[

		{
		email: "jacquelyaga@yahoo.com",
		password: "qwertyuiop",
		password_confirmation: "qwertyuiop"},

		{
		email: "nomiswilsk@gmail.com",
		password: "Openforme",
		password_confirmation: "Openforme"},

		{
		email: "mbats@gmail.com",
		password: "princess",
		password_confirmation: "princess"},
		
		{
		email: "paul@codefellowship.com",
		password: "Spirit",
		password_confirmation: "Spirit"}
	]

)
# user.save!