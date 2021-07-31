# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "manucabanga@gmail.com", blocked: false, name: "JM Cabanga", role: 222, password: 'q1w2e3r4', password_confirmation: 'q1w2e3r4')
<<<<<<< HEAD

# pg_restore --verbose --clean --no-acl --no-owner -h localhost -U jm -d ag11_development latest.dump
=======
User.create(email: "meidyluis@gmail.com", blocked: false, name: "Meidy Ricardo", role: 222, password: 'q1w2e3r4', password_confirmation: 'q1w2e3r4')

>>>>>>> main
