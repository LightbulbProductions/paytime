@employee = Employee.create(email: "test@test.com", 
                    password: "testing",
                    password_confirmation: "testing",
                    first_name: "Testy",
                    last_name: "McTest",
                    phone: "6466100172",
                    ssn: 1234,
                    company: "ABC Company"
                    )

puts "1 employee created"

AdminUser.create(email: "admin@test.com",
                 password: "testing",
                 password_confirmation: "testing",
                 first_name: "Admin",
                 last_name: "Adminer",
                 phone: "6466100172",
                 ssn: 1234,
                 company: "ABC Company"
                 )

puts "1 Admin user created"

  AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
  AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
  AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today, work_performed: "#{post} work_performed content  I must have had a longish sleep, for, when I woke, the stars were shining down on my face. Sounds of the countryside came faintly in, and the cool night air, veined with smells' of earth and salt, fanned my cheeks. The marvelous peace of the sleepbound summer night flooded through me like a tide.", user_id: @employee.id, daily_hours: 12.5)
end

puts "100 Posts have been created"


 