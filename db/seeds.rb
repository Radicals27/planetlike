# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#(:picture, :name, :sex, :age, :about_me, :work_education, :location, :height, :health, :vices, :pets, :children, :religion, :politics, :starsign, :looking_for, :orientation)

Profile.create(name: 'Jerry', sex: 'Male', age: '33', about_me: 'hey! I\'m a friendly guy who loves to party!', work_education: 'Bachelors of Comedy', location: 'Australia', height: '175', health: 'I exercise a few days per week', vices: 'I don\'t drink or smoke', pets: 'I have a pet', children: 'I don\'t have any children but I\'m flexible', religion: 'Orthodox', politics: 'Centrist', starsign: 'Leo', looking_for: 'Something casual', orientation: 'Straight')