# Seed Sex
sex_female = [{ :en => 'Female', :cs => 'Žena' }]
sex_female.each_index do |i|
  I18n.locale = 'en'
  cat = Sex.new :name => sex_female[i][:en]
  I18n.locale = 'cs'
  cat.name = sex_female[i][:cs]
  cat.save
end
sex_male = [{ :en => 'Male', :cs => 'Muž' }]
sex_male.each_index do |i|
  I18n.locale = 'en'
  cat = Sex.new :name => sex_male[i][:en]
  I18n.locale = 'cs'
  cat.name = sex_male[i][:cs]
  cat.save
end

# Seed Level
level = [{ :en => '9th dan', :cs => '9. dan' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '8th dan', :cs => '8. dan' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '7th dan', :cs => '7. dan' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '6th dan', :cs => '6. dan' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '5th dan', :cs => '5. dan' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '4th dan', :cs => '4. dan' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '3rd dan', :cs => '3. dan' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '2nd dan', :cs => '2. dan' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '1st dan', :cs => '1. dan' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '9th kup', :cs => '9. kup' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '8th kup', :cs => '8. kup' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '7th kup', :cs => '7. kup' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '6th kup', :cs => '6. kup' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '5th kup', :cs => '5. kup' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '4th kup', :cs => '4. kup' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '3rd kup', :cs => '3. kup' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '2nd kup', :cs => '2. kup' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end
level = [{ :en => '1st kup', :cs => '1. kup' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end



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
               team_id: 1,
               sex_id: 2,
               level_id: 2)

Member.create!(itf_id: "50719",
               first_name: "Lucie",
               last_name: "Bohatá",
               birthdate: "15.1.2001",
               team_id: 1,
               sex_id: 1,
               level_id: 1)

Member.create!(itf_id: "510313",
               first_name: "Mikuláš",
               last_name: "Hupcej",
               birthdate: "8.8.1998",
               team_id: 2,
               sex_id:2,
               level_id: 10)

Member.create!(itf_id: "509634",
               first_name: "Eliška",
               last_name: "Hupcejová",
               birthdate: "5.8.2001",
               team_id: 1,
               sex_id: 1,
               level_id: 16)

# Seed Members_Competitions
CompetitionsMember.create!(member_id: 1,
                           competition_id: 1,
                           trainee: false,
                           coach: false)

# Seed Members_Competitions
CompetitionsMember.create!(member_id: 3,
                           competition_id: 1,
                           trainee: true,
                           coach: true)