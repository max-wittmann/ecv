# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'admin', password: 'admin', email: 'admin@admin.com')

introduction = Section.create(name: 'introduction', orderpos: 0, text: '
    <div class="jumbotron introduction">
        <h1>About Default Name</h1>
        <p class="lead">Default Name is a dedicated professional, a true hero, and a person of many mysteries.
        He knows what he\'s talking about, and he talks about it well. That\'s why they call him \'da man\'!</p>
    </div>')
education = Section.create(name: 'education', title: 'Education', orderpos: 1, text: '')
prevExperience = Section.create(name: 'previousexperience', title: 'Previous Experience', orderpos: 2, text: '')
projects = Section.create(name: 'projects', title: 'Projects', orderpos: 4, text: '')
skills = Section.create(name: 'skills', title: 'Skills', orderpos: 3, text: '')
references = Section.create(name: 'references', title: 'References', orderpos: 5, text: 'There are currently no <em>references</em> here! Look for them <a href="http://www.google.com">elsewhere</a>')

SectionItem.create(sectionid: education.id, title: "First Item", orderpos: 1, shortdescription: "Short Text", longdescription: "LongText")
SectionItem.create(sectionid: education.id, title: "Second Item", orderpos: 2, shortdescription: "Short Text", longdescription: "LongText")

SectionItem.create(sectionid: prevExperience.id, title: "First Item", orderpos: 1, shortdescription: "Short Text", longdescription: "LongText")
SectionItem.create(sectionid: prevExperience.id, title: "Second Item", orderpos: 2, shortdescription: "Short Text", longdescription: "LongText")

SectionItem.create(sectionid: projects.id, title: "First Item", orderpos: 1, shortdescription: "Short Text", longdescription: "LongText")

SectionItem.create(sectionid: skills.id, title: "First Item", orderpos: 1, shortdescription: "Short Text", longdescription: "LongText")
SectionItem.create(sectionid: skills.id, title: "Second Item", orderpos: 2, shortdescription: "Short Text", longdescription: "LongText")

