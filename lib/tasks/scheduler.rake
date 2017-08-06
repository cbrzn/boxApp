desc "This task is called by the Heroku scheduler add-on"
task :reset_morning_bookings => :environment do
  array = [1, 2, 3, 4]
  Booking.where(training_id: array).destroy_all
end

task :reset_afternoon_bookings => :environment do
  array = [5, 6, 7, 9, 10, 11, 12, 13, 15, 16]
  Booking.where(training_id: array).destroy_all
end

task :resetting_wod_weekly => :environment do
  Wod.where('created_at < ?', 6.days.ago).destroy_all
end

task :reset_guests => :environment do
  Guest.delete_all
end
