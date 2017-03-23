admin_users = [
              [ "Cesar Brazon",
                23736258,
                "cesarbrazon10@gmail.com",
                'foobar',
                'foobar',
                true],
              [ "Juan Jose Leonardi",
                20438964,
                "leonardi.juan22@gmail.com",
                'foobar',
                'foobar',
                true],
              [ "Manuel Varela",
                21162108,
                "surgical92@gmail.com",
                'foobar',
                'foobar',
                true],
              [ "Moises Isea",
                19831156,
                "meic19@outlook.com",
               'foobar',
               'foobar',
                true],
               [ "Ludus box", 1,"gerencia@ludusbox.com.ve", 'foobar', 'foobar',
                true ]
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
