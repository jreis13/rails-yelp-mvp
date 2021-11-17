puts 'Deleting previous database...'
Review.delete_all
Restaurant.delete_all

puts 'Creating 10 new restaurants...'
10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
end

puts 'Restaurants added!'
