User.create!(name:  "Example User",
             email: "example@tmail.com",
             password:              "admin1234",
             password_confirmation: "admin1234")
            
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@tmail.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end