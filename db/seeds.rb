# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

5.times do
  Event.create(
    address: Faker::Address.street_address,
    endDate: Faker::Number.number(8),
    imageThumbUrl: Faker::Internet.url,
    shortDescription: Faker::Lorem.sentence,
    title: Faker::Lorem.word
  )
end

puts "Seed finished"
puts "#{Event.count} events created"