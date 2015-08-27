# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

offices=Office.create([{name: 'Paris', address: '136 avenue des Champs Elysees, Paris'},
                       {name:'Londres', address:'74 Rivington Street, London' },
                       {name: 'New-York', address:'60 Broad Street, New-York,NY'},
                       {name:'Hong-Kong', address:'Yun Ping Road, 28, Hong Kong'}])
