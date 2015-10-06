1.times do 
  user = User.new(
    name:   "Kevin",
    email:  "kkornafel82@yahoo.com",
    password: "Terrapin11"
    )

  user.skip_confirmation!
  user.save!
end


5.times do 
  item = Item.create!(
  user:  User.first,
  name:  "These are items",
  created_at: rand(10.minutes .. 1.year).ago
  )

end

puts "Seed finished"
 puts "#{Item.count} items created"
 