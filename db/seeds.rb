# Seed Teams
Team.create!(name: "Sparring")
Team.create!(name: "Stránčice")

# Seed Users
User.create!(name:  "Administrator",
             email: "admin@admin.com",
             password:              "password",
             password_confirmation: "password",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now,
             team_id: 1)

User.create!(name:  "User",
             email: "user@user.com",
             password:              "password",
             password_confirmation: "password",
             admin:     false,
             activated: true,
             activated_at: Time.zone.now,
             team_id: 1)


5.times do |n|
  name  = Faker::Name.name
  email = "user-#{n+1}@user.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now,
              team_id: 2)
end

# Seed Competitions
Competition.create!(name: "Světový pohár 2016",
                    location: "Budapešť",
                    date: "12. října - 16. října 2016",
                    deadline: "30.09.2016",
                    fee: "200",
                    instructions_url: "http://taekwondocz.com/files/PROPOZICE%20MR%202016.pdf",
                    langlong: "50.289,14.830")

# Seed Members
Member.create!(itf_id: "51031",
               first_name: "Jiří",
               last_name: "Beneš",
               birthdate: "20.5.2002",
               team_id: 1)

Member.create!(itf_id: "50719",
               first_name: "Lucie",
               last_name: "Bohatá",
               birthdate: "15.1.2001",
               team_id: 1)

Member.create!(itf_id: "510313",
               first_name: "Mikuláš",
               last_name: "Hupcej",
               birthdate: "8.8.1998",
               team_id: 2)


Member.create!(itf_id: "509634",
               first_name: "Eliška",
               last_name: "Hupcejová",
               birthdate: "5.8.2001",
               team_id: 1)