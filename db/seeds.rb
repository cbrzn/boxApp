User.create!(name: "Cesar Brazon",
            ci: 23736258,
            email: "cesarbrazon10@gmail.com",
            password: 'foobar',
            password_confirmation: 'foobar',
            admin: true)

training_hours =  [
                  [ "7:00am - Clase",   24],
                  [ "8:00am - Clase",   24],
                  [ "9:00am - Fundamentals",   24],
                  [ "10:00am - Open box",  24],
                  [ "11:00am- Open box",  24],
                  [ "12:00m - Clases",   24],
                  [ "1:00pm- Open box",   24],
                  [ "2:00pm- Open box",   24],
                  [ "3:00pm- Open box",   24],
                  [ "4:00pm - Fundamentals",   24],
                  [ "5:00pm - Clase",   24],
                  [ "6:00pm - Clase",   24],
                  [ "7:00pm - Clase",   24],
                  [ "8:00pm - Clase",   24],
                  [ "SABADO - Clase weightlifting - 10:00am", 5],
                  [ "SABADO - Clase weightlifting - 11:00am", 5],
                  [ "SABADO - Clase gimnasia - 10:00am", 5],
                  [ "SABADO - Clase gimnasia - 11:00am", 5]
                  ]

training_hours.each do |hora, cantidad|
Training.create!( hora: hora, cantidad: cantidad)
end
