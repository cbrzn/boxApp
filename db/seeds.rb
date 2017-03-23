admin_users = [
              [name: "Cesar Brazon",
               ci: 23736258,
               email: "cesarbrazon10@gmail.com",
               password: 'foobar',
               password_confirmation: 'foobar',
               admin: true],
              [name: "Juan Jose Leonardi",
               ci: 20438964,
               email: "leonardi.juan22@gmail.com",
               password: 'foobar',
               password_confirmation: 'foobar',
               admin: true],
              [name: "Manuel Varela",
               ci: 21162108,
               email: "surgical92@gmail.com",
               password: 'foobar',
               password_confirmation: 'foobar',
               admin: true],
              [name: "Moises Isea",
               ci: 19831156,
               email: "meic19@outlook.com",
               password: 'foobar',
               password_confirmation: 'foobar',
               admin: true],
               [name: "Ludus box",
                ci: 1,
                email: "gerencia@ludusbox.com.ve",
                password: 'foobar',
                password_confirmation: 'foobar',
                admin: true]
              ]

admin_users.each do |name, ci, email, password, password_confirmation, admin|
User.create!(name: name, ci: ci, email: email,
             password: password, password_confirmation: password_confirmation)
           end

training_hours =  [
                  [ "7:00am - Clase",   24],
                  [ "8:00am - Clase",   24],
                  [ "12:00m - Clase",   24],
                  [ "4:00pm - Clase",   15],
                  [ "5:00pm - Clase",   24],
                  [ "6:00pm - Clase",   24],
                  [ "7:00pm - Clase",   24],
                  [ "8:00pm - Clase",   24],
                  [ "JUEVES - Clase weightlifting - 3:00pm", 5],
                  [ "SABADO - Clase weightlifting - 10:00am", 5],
                  [ "SABADO - Clase weightlifting - 11:00am", 5],
                  [ "SABADO - Clase gimnasia - 10:00am", 5],
                  [ "SABADO - Clase gimnasia - 11:00am", 5]
                  ]

training_hours.each do |hora, cantidad|
Training.create!( hora: hora, cantidad: cantidad)
end
