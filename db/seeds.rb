Service.destroy_all

10.times do |index|
  service = Service.create!(name: Faker::Job.title,
                  detail: Faker::Lorem.sentence(20, false, 0).chop,
                  price: Faker::Commerce.price,
                  )
end
p "Created #{Service.count} services."
