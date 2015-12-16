desc "sendmails"
task :send_mail => :environment do
  User.bday_update
  puts "done."
end