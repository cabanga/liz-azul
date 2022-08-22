# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

User.create(email: "manucabanga@gmail.com", blocked: false, name: "JM Cabanga", role: 222, password: 'q1w2e3r4', password_confirmation: 'q1w2e3r4')

# pg_restore --verbose --clean --no-acl --no-owner -h localhost -U jm -d ag11_development latest.dump
User.create(email: "meidyluis@gmail.com", blocked: false, name: "Meidy Ricardo", role: 222, password: 'q1w2e3r4', password_confirmation: 'q1w2e3r4')


#pg_restore --verbose --clean --no-acl --no-owner -h ec2-44-210-36-247.compute-1.amazonaws.com -p 5432 -U deravmvtibltaj -d dd2fdncji1o8kf latest.dump
#8ae2d8f00a0d7d777c46544e3909aa13ce5bade7759c9704b3cbb6a8df2102d3