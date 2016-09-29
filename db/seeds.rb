@user = User.create(email: "test@test.com", password: "testing", password_confirmation: "testing", first_name: "Testy", last_name: "McTest")

puts "1 User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"