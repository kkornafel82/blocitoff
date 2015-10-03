5.times do
   user = User.new(
     name:     Faker::Name.name,
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10)
   )
   user.skip_confirmation!
   user.save!
 end


15.times do 
  item = Item.create!(
  user:   User.first,
  name: Faker::Lorem.sentence,
  created_at: rand(10.minutes .. 1.year).ago
  )

end

puts "Seed finished"
 puts "#{Item.count} items created"
 