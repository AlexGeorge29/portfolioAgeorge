# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "cleaning database"

Comment.destroy_all
Message.destroy_all
Review.destroy_all
Devproject.destroy_all
Musicproject.destroy_all

puts "generate new database"

languages = ["Ruby", "Python", "CSS", "HTML", "JavaScript", "php"]
lorem_1paragraph = "Lorem ipsum dolor sit amet, ad minimum lucilius definitiones cum, ea vidit mollis numquam has, eu nibh iusto scripserit ius. Consul accusam lobortis mea ut. Ferri eruditi at usu. Ea viris audiam vel, homero similique sea ea. Ne eam etiam mentitum appellantur."

5.times do
  devproject = Devproject.new(
    name:Faker::App.name,
    language: languages.sample,
    short_description: Faker::Lorem.sentences,
    long_description: Faker::Lorem.paragraphs,
    client: Faker::Company.name
    )
  3.times do
    comment = Comment.new(
      writter: Faker::Name.name,
      content: lorem_1paragraph
      )
    comment.project_id = devproject.id
    comment.save!
  end
devproject.save!
end

5.times do
  musicprojects = Musicproject.new(
    name: Faker::Music.album ,
    software: "ableton live 9.5",
    vst: Faker::Music.instrument,
    time: Faker::Number.between(1, 10),
    style: Faker::Music.genre,
    short_descrption: Faker::Lorem.sentences,
    long_description: Faker::Lorem.paragraphs
    )
  3.times do
    comment = Comment.new(
      writter: Faker::Name.name,
      content: lorem_1paragraph
      )
    comment.project_id = musicprojects.id
    comment.save!
  end
musicprojects.save!
end

5.times do
  message = Message.new(
    sender: Faker::Name.name,
    email: Faker::Internet.email,
    content: lorem_1paragraph
    )
  message.save!
end

5.times do
  review = Review.new(
    sender: Faker::Name.name,
    content: lorem_1paragraph
    )
review.save!
end
