require 'faker'

puts 'Creating 4 fake flats...'
4.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    price_per_night: Faker::Number.between(from: 50, to: 500),
    number_of_guests: Faker::Number.between(from: 1, to: 12),
  )
  flat.save!
end
puts 'Finished!'