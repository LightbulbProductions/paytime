@user = User.create(email: "test@test.com", 
                    password: "testing",
                    password_confirmation: "testing",
                    first_name: "Testy",
                    last_name: "McTest",
                    phone: "6466100172")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
                 password: "testing",
                 password_confirmation: "testing",
                 first_name: "Admin",
                 last_name: "Adminer",
                 phone: "6466100172")

puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 2.days))
end

puts "100 audit logs have been created"