namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # Schedule to run at Sunday at 5pm
    # Iterate over all employees
    # Skip AdminUsers
    # Send a msg that has instructions and link to log time
    #User.all.each do |user|
    # SmsTool.send_sms(message, number)
    #end
    # No spaces or dashes for number, exactly 10 characters that are each a number
  end

end
