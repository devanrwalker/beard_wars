User.create!(
    email: "test@test.com",
    password: "asdfasdf",
    password_confirmation: "asdfasdf",
    name: "Admin User",
    username: "Admin"
)

puts "1 Admin user created"

User.create!(
    email: "test1@test.com",
    password: "asdfasdf",
    password_confirmation: "asdfasdf",
    name: "Regular User",
    username: "Regular"
)

puts "1 regular user created"

9.times do |picture_item|
  Picture.create!(
    title: "Picture title: #{picture_item}",
    image: "beard-seeds"
  )
end

puts "9 pictures created"
