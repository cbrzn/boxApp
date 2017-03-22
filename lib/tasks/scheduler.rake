desc "This task is called by the Heroku scheduler add-on"
task :reset_bookings => :environment do
  Booking.all.delete_all
end
