
5.times do
  trip = Trip.create(
    name: Faker::BossaNova.song,
  )
  10.times do
    @location = trip.locations.create(
      name: Faker::Address.city,
    )
  end
end

locations = Location.all
locations.each do |l|
  Address.create(
    location_id: l.id,
    street: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip_code,
    )
  end


puts "magic happend"
