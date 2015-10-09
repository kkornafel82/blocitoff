1.times do 
  user = User.new(
    name:   "Kevin",
    email:  "kkornafel82@yahoo.com",
    password: "Terrapin11"
    )

  user.skip_confirmation!
  user.save!
end

admin = User.new(
  name:     'Admin',
  email:    'admin@example.com',
  password: 'helloworld',
)
admin.skip_confirmation!
admin.save!

member = User.new(
  name:     'Member',
  email:    'member@example.com',
  password: 'helloworld'
)
member.skip_confirmation!
member.save!


1.times do 
  item = Item.create!(
  user:  User.first,
  name:  "These are items",
  created_at: rand(10.minutes .. 1.year).ago
  )

end

5.times do
  Item.create!(
   user: member,   
   name: Faker::Lorem.sentence
   )
end

5.times do
  Item.create!(
   user: admin,   
   name: Faker::Lorem.sentence
   )
end

puts "Seed finished"
puts "#{Item.count} items created"
 