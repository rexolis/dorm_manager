User.create!(name:  "Administrator",
             email: "admin@ddms.com",
             password:              "sysadmin",
             password_confirmation: "sysadmin",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

20.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end