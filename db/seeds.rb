User.create!(name: "Cesar",
            ci: 12312312,
            email: "holacomo@estas.com",
            password: 'foobar',
            password_confirmation: 'foobar')

training_hours =  [
                  [ "7:00am - 8:00am",   24],
                  [ "8:00am - 9:00am",   24],
                  [ "9:00am - 10:00am",  24],
                  [ "10:00am - 11:00am", 24],
                  [ "11:00am - 12:00am", 24],
                  [ "12:00am - 1:00am",  24],
                  [ "1:00am - 2:00am",   24],
                  [ "2:00am - 3:00am",   24],
                  [ "3:00am - 4:00am",   24],
                  [ "4:00am - 5:00am",   24],
                  ]

training_hours.each do |hora, cantidad|
Training.create!( hora: hora, cantidad: cantidad)
end
