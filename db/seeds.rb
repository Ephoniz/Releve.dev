# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts'Deleting everything'

Language.destroy_all
Course.destroy_all

puts'Creating languages'

ruby = Language.create!(name:'Ruby')
html = Language.create!(name:'HTML')

puts'Creating courses'

Course.create!(name:'Ruby', description:'easy', language:ruby)
Course.create!(name:'JS', description:'hard', language:html)



puts'done'