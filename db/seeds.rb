# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do |i|
    Article.create!(
        user_id: rand(1..3),
        image: open("app/assets/images/sample.jpg"),
        title: "こんにちは",
        body: "#{i}回目のこんにちは"
    )
end