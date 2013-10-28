# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Image.destroy_all

Image.create([
    {url: 'http://lokeshdhakar.com/projects/lightbox2/img/demopage/image-4.jpg'},
	{url: 'http://lokeshdhakar.com/projects/lightbox2/img/demopage/image-5.jpg'},
	{url: 'http://lokeshdhakar.com/projects/lightbox2/img/demopage/image-6.jpg'}
])

User.destroy_all

User.create([
  {email: 'shane@shane.com'},
  {email: 'eliot@eliot.com'}
])