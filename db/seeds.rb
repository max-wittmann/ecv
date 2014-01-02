# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'admin', password: 'admin', email: 'admin@admin.com')

educationSection = Section.create(name: 'education', title: 'Education', orderpos: 1, text: 'Text Here')
Section.create(name: 'previousexperience', title: 'Previous Experience', orderpos: 2, text: 'Text Here')
Section.create(name: 'projects', title: 'Projects', orderpos: 3, text: 'Text Here')
Section.create(name: 'skills', title: 'Skills', orderpos: 4, text: 'Text Here')
Section.create(name: 'references', title: 'References', orderpos: 5, text: 'Text Here')

SectionItem.create(sectionid: educationSection.id, title: "First Item", orderpos: 1, shortdescription: "Short Text", longdescription: "LongText")
SectionItem.create(sectionid: educationSection.id, title: "Second Item", orderpos: 2, shortdescription: "Short Text", longdescription: "LongText")


