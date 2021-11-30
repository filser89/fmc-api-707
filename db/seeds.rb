# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Story.destroy_all

stories = [
      {
        name: "I hate this class",
        text: "they make me study every weekend"
      },
      {
        name: "I love this class",
        text: "they make me study every weekend"
      },
      {
        name: "My dog ate my homework",
        text: "thats why i didn't finish the challenge"
      }
    ]
stories.each do |story|
  st = Story.create!(name: story[:name], text: story[:text])
  puts "Story #{st.name} created"
end

puts "Created #{Story.count} stories"
