namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    #if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: https://lp-overtime.herokuapp.com"
  
      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message)
        # Send a msg that has instructions and link to log time
        #User.all.each do |user|
        # SmsTool.send_sms(message, number)
        #end
        # No spaces or dashes for number, exactly 10 characters that are each a number
      end
      #end
  end

    desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
    task manager_email: :environment do
      submitted_posts = Post.submitted
      admin_users = AdminUser.all
    
      if submitted_posts.count > 0
        admin_users.each do |admin|
          ManagerMailer.email(admin).deliver_later
        end
      end
    end
end
