User.create!(name: "Cesar",
            ci: 12312312,
            email: "holacomo@estas.com",
            password: 'foobar',
            password_confirmation: 'foobar')

training_hours =  [
                  [ "7:00am",   24],
                  [ "8:00am",   24],
                  [ "9:00am",   24],
                  [ "10:00am",  24],
                  [ "11:00am",  24],
                  [ "12:00m",   24],
                  [ "1:00pm",   24],
                  [ "2:00pm",   24],
                  [ "3:00pm",   24],
                  [ "4:00pm",   24],
                  [ "5:00pm",   24],
                  [ "6:00pm",   24],
                  [ "7:00pm",   24],
                  [ "8:00pm",   24],
                  ]

training_hours.each do |hora, cantidad|
Training.create!( hora: hora, cantidad: cantidad)
end


bookedUsers = [
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           [1, 1],
           ]
bookedUsers.each do |user_id, training_id|
  Booking.create!(user_id: user_id,training_id: training_id)
end
