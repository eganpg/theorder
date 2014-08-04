# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
logins = Login.create([{firstName: 'Peter', lastName: 'Egan', email: 'eganpg@gmail.com'},
												{firstName: 'Alden', lastName: 'Egan', email: 'alden_egan@yahoo.com'},
												{firstName: 'Luke', lastName: 'Egan', email: 'trishegan5@hotmail.com'}
				])