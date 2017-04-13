desc "This task is called by the Heroku scheduler add-on"
task :reset_bookings => :environment do
  Booking.all.delete_all
end

task :auto_bookings => :environment do
  Booking.create(user_id: 90, training_id: 6)
  Booking.create(user_id: 55, training_id: 7)


end
