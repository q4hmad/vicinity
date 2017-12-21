Role.create(name: :admin)
Role.create(name: :client)

user1 = User.create(username: 'Kirsten',
								    email: 'admin@gmail.com',
								    password: 'password1234',
								    password_confirmation: 'password1234')
user1.add_role(:admin)
user3 = User.create(username: 'Qudsia',
								    email: 'client@gmail.com',
								    password: 'password1234',
								    password_confirmation: 'password1234')
user3.add_role(:client)
user4 = User.create(username: 'Byron',
								    email: 'client2@gmail.com',
								    password: 'password1234',
								    password_confirmation: 'password1234')
user4.add_role(:client)


5.times do |index|
  Service.create!(name: Faker::Job.title,
                  detail: Faker::Lorem.sentence(20, false, 0).chop,
                  price: Faker::Commerce.price,
                  user: user3)
end

5.times do |index|
  Service.create!(name: Faker::Job.title,
                  detail: Faker::Lorem.sentence(20, false, 0).chop,
                  price: Faker::Commerce.price,
                  user: user4)
end
p "Created #{Service.count} services."
