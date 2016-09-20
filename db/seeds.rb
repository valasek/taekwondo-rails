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
level = [{ :en => '9th dan', :cs => '9. dan' },
         { :en => '8th dan', :cs => '8. dan' },
         { :en => '7th dan', :cs => '7. dan' },
         { :en => '6th dan', :cs => '6. dan' },
         { :en => '5th dan', :cs => '5. dan' },
         { :en => '4th dan', :cs => '4. dan' },
         { :en => '3rd dan', :cs => '3. dan' },
         { :en => '2nd dan', :cs => '2. dan' },
         { :en => '1st dan', :cs => '1. dan' },
         { :en => '9th kup', :cs => '9. kup' },
         { :en => '8th kup', :cs => '8. kup' },
         { :en => '7th kup', :cs => '7. kup' },
         { :en => '6th kup', :cs => '6. kup' },
         { :en => '5th kup', :cs => '5. kup' },
         { :en => '4th kup', :cs => '4. kup' },
         { :en => '3rd kup', :cs => '3. kup' },
         { :en => '2nd kup', :cs => '2. kup' },
         { :en => '1st kup', :cs => '1. kup' }]
level.each_index do |i|
  I18n.locale = 'en'
  cat = Level.new :name => level[i][:en]
  I18n.locale = 'cs'
  cat.name = level[i][:cs]
  cat.save
end

# Seed Tull
tull = [{ :en => 'Not set', :cs => 'Nepřiřazeno' },
        { :en => 'Pupils 9th - 8th kup', :cs => 'Žáci 9. - 8. kup' },
        { :en => 'Pupils 7th - 5th kup', :cs => 'Žáci 7. - 5. kup' },
        { :en => 'Pupils 4th - 3rd kup', :cs => 'Žáci 4. - 3. kup' },
        { :en => 'Pupils 2nd - 1st kup', :cs => 'Žáci 2. - 1. kup' },
        { :en => 'Pupils 1st dan and higher', :cs => 'Žáci 1. dan a výše' },
        { :en => 'Juniors 9th - 8th kup', :cs => 'Junioři 9. - 8. kup' },
        { :en => 'Juniors 7th - 5th kup', :cs => 'Junioři 7. - 5. Kup' },
        { :en => 'Juniors 4th - 3rd kup', :cs => 'Junioři 4. - 3. kup' },
        { :en => 'Juniors 2nd - 1st kup', :cs => 'Junioři 2. - 1. kup' },
        { :en => 'Juniors 1st dan and higher', :cs => 'Junioři 1. dan a výše' },
        { :en => 'Seniors 9th - 8th kup', :cs => 'Senioři 9. - 8. kup' },
        { :en => 'Seniors 7th - 5th kup', :cs => 'Senioři 7. - 5. kup' },
        { :en => 'Seniors 4th - 3rd kup', :cs => 'Senioři 4. - 3. kup' },
        { :en => 'Seniors 2nd - 1st kup', :cs => 'Senioři 2. - 1. kup' },
        { :en => 'Seniors 1st - 2nd dan', :cs => 'Senioři 1. - 2. dan' },
        { :en => 'Seniors 3rd dan and higher', :cs => 'Senioři 3. dan a výše' }]
tull.each_index do |i|
  I18n.locale = 'en'
  cat = Tull.new :name => tull[i][:en], :sex_id => 2
  I18n.locale = 'cs'
  cat.name = tull[i][:cs]
  cat.sex_id = 2
  cat.save
end

tull = [{ :en => 'Not set', :cs => 'Nepřiřazeno' },
        { :en => 'Pupils 9th - 8th kup', :cs => 'Žákině 9. - 8. kup' },
        { :en => 'Pupils 7th - 5th kup', :cs => 'Žákině 7. - 5. kup' },
        { :en => 'Pupils 4th - 3rd kup', :cs => 'Žákině 4. - 3. kup' },
        { :en => 'Pupils 2nd - 1st kup', :cs => 'Žákině 2. - 1. kup' },
        { :en => 'Pupils 1st dan and higher', :cs => 'Žákině 1. dan a výše' },
        { :en => 'Juniors 9th - 8th kup', :cs => 'Juniorky 9. - 8. kup' },
        { :en => 'Juniors 7th - 5th kup', :cs => 'Juniorky 7. - 5. Kup' },
        { :en => 'Juniors 4th - 3th kup', :cs => 'Juniorky 4. - 3. kup' },
        { :en => 'Juniors 2nd - 1st kup', :cs => 'Juniorky 2. - 1. kup' },
        { :en => 'Juniors 1st dan and higher', :cs => 'Juniorky I. dan a výše' },
        { :en => 'Seniors 9th - 8th kup', :cs => 'Seniorky 9. - 8.kup' },
        { :en => 'Seniors 7th - 5th kup', :cs => 'Seniorky 7. - 5.kup' },
        { :en => 'Seniors 4th - 3th kup', :cs => 'Seniorky 4. - 3.kup' },
        { :en => 'Seniors 2nd - 1st kup', :cs => 'Seniorky 2. - 1. kup' },
        { :en => 'Seniors 1st - 2nd dan', :cs => 'Seniorky 1. - 2. dan' },
        { :en => 'Seniors 3rd dan and higher', :cs => 'Seniorky 3. dan a výše' }]
tull.each_index do |i|
  I18n.locale = 'en'
  cat = Tull.new :name => tull[i][:en], :sex_id => 1
  I18n.locale = 'cs'
  cat.name = tull[i][:cs]
  cat.sex_id = 1
  cat.save
end

# Seed Tki
tki = [{ :en => 'Not set', :cs => 'Nepřiřazeno' },
       { :en => 'Pupils', :cs => 'Žáci' },
       { :en => 'Juniors', :cs => 'Junioři' },
       { :en => 'Seniors', :cs => 'Senioři' }]
tki.each_index do |i|
  I18n.locale = 'en'
  cat = Tki.new :name => tki[i][:en], :sex_id => 2
  I18n.locale = 'cs'
  cat.name = tki[i][:cs]
  cat.sex_id = 2
  cat.save
end

tki = [{ :en => 'Not set', :cs => 'Nepřiřazeno' },
       { :en => 'Pupils', :cs => 'Žákině' },
       { :en => 'Juniors', :cs => 'Juniorky' },
       { :en => 'Seniors', :cs => 'Seniorky' }]
tki.each_index do |i|
  I18n.locale = 'en'
  cat = Tki.new :name => tki[i][:en], :sex_id => 1
  I18n.locale = 'cs'
  cat.name = tki[i][:cs]
  cat.sex_id = 1
  cat.save
end

# Seed Wirok
wirok = [{ :en => 'Not set', :cs => 'Nepřiřazeno' },
         { :en => 'Juniors', :cs => 'Junioři' },
         { :en => 'Seniors', :cs => 'Senioři' }]
wirok.each_index do |i|
  I18n.locale = 'en'
  cat = Wirok.new :name => wirok[i][:en], :sex_id => 2
  I18n.locale = 'cs'
  cat.name = wirok[i][:cs]
  cat.sex_id = 2
  cat.save
end

wirok = [{ :en => 'Not set', :cs => 'Nepřiřazeno' },
         { :en => 'Juniors', :cs => 'Juniorky' },
         { :en => 'Seniors', :cs => 'Seniorky' }]
wirok.each_index do |i|
  I18n.locale = 'en'
  cat = Wirok.new :name => wirok[i][:en], :sex_id => 1
  I18n.locale = 'cs'
  cat.name = wirok[i][:cs]
  cat.sex_id = 1
  cat.save
end

# Seed Mobum Matsogi
mobum_matsogi = [{ :en => 'Not set', :cs => 'Nepřiřazeno' }]
mobum_matsogi.each_index do |i|
  I18n.locale = 'en'
  cat = MobumMatsogi.new :name => mobum_matsogi[i][:en], :sex_id => 2
  I18n.locale = 'cs'
  cat.name = mobum_matsogi[i][:cs]
  cat.sex_id = 2
  cat.save
end

mobum_matsogi = [{ :en => 'Not set', :cs => 'Nepřiřazeno' }]
mobum_matsogi.each_index do |i|
  I18n.locale = 'en'
  cat = MobumMatsogi.new :name => mobum_matsogi[i][:en], :sex_id => 1
  I18n.locale = 'cs'
  cat.name = mobum_matsogi[i][:cs]
  cat.sex_id = 1
  cat.save
end

# Seed Tull team
tull_team = [{ :en => 'Not set', :cs => 'Nepřiřazeno' }]
tull_team.each_index do |i|
  I18n.locale = 'en'
  cat = TullTeam.new :name => tull_team[i][:en], :sex_id => 2
  I18n.locale = 'cs'
  cat.name = tull_team[i][:cs]
  cat.sex_id = 2
  cat.save
end

tull_team = [{ :en => 'Not set', :cs => 'Nepřiřazeno' }]
tull_team.each_index do |i|
  I18n.locale = 'en'
  cat = TullTeam.new :name => tull_team[i][:en], :sex_id => 2
  I18n.locale = 'cs'
  cat.name = tull_team[i][:cs]
  cat.sex_id = 1
  cat.save
end

# Seed Matsogi
matsogi = [{ :en => 'Not set', :cs => 'Nepřiřazeno' },
           { :en => 'Pupils up to 32 kg', :cs => 'Žáci do 32 kg' },
           { :en => 'Pupils 32 - 38 kg', :cs => 'Žáci 32 – 38 kg' },
           { :en => 'Pupils 38 - 44 kg', :cs => 'Žáci 38 – 44 kg' },
           { :en => 'Pupils 44 - 50 kg', :cs => 'Žáci 44 – 50 kg' },
           { :en => 'Pupils over 50 kg', :cs => 'Žáci nad 50 kg' },
           { :en => 'Juniors up to 50 kg', :cs => 'Junioři do 50 kg' },
           { :en => 'Juniors 50 - 56 kg', :cs => 'Junioři 50 – 56 kg' },
           { :en => 'Juniors 56 - 62 kg', :cs => 'Junioři 56 – 62 kg' },
           { :en => 'Juniors 62 - 68 kg', :cs => 'Junioři 62 – 68 kg' },
           { :en => 'Juniors 68 - 75 kg', :cs => 'Junioři 68 - 75 kg' },
           { :en => 'Juniors over 75 kg', :cs => 'Junioři nad 75 kg' },
           { :en => 'Seniors up to 57 kg', :cs => 'Senioři do 57 kg' },
           { :en => 'Seniors 57 - 63 kg', :cs => 'Senioři 57 – 63 kg' },
           { :en => 'Seniors 63 - 70 kg', :cs => 'Senioři 63 – 70 kg' },
           { :en => 'Seniors 70 - 78 kg', :cs => 'Senioři 70 – 78 kg' },
           { :en => 'Seniors 78 - 85 kg', :cs => 'Senioři 78 – 85 kg' },
           { :en => 'Seniors over 85 kg', :cs => 'Senioři nad 85 kg'}]
matsogi.each_index do |i|
  I18n.locale = 'en'
  cat = Matsogi.new :name => matsogi[i][:en], :sex_id => 2
  I18n.locale = 'cs'
  cat.name = matsogi[i][:cs]
  cat.sex_id = 2
  cat.save
end

matsogi = [{ :en => 'Not set', :cs => 'Nepřiřazeno' },
           { :en => 'Pupils up to 32 kg', :cs => 'Žákyně do 32 kg' },
           { :en => 'Pupils 32 - 38 kg', :cs => 'Žákyně 32 – 38 kg' },
           { :en => 'Pupils 38 - 44 kg', :cs => 'Žákyně 38 – 44 kg' },
           { :en => 'Pupils 44 - 50 kg', :cs => 'Žákyně 44 – 50 kg' },
           { :en => 'Pupils over 50 kg', :cs => 'Žákyně nad 50 kg' },
           { :en => 'Juniors up to 45 kg', :cs => 'Juniorky do 45 kg' },
           { :en => 'Juniors 45 - 50 kg', :cs => 'Juniorky 45 – 50 kg' },
           { :en => 'Juniors 50 - 55 kg', :cs => 'Juniorky 50 – 55 kg' },
           { :en => 'Juniors 55 - 60 kg', :cs => 'Juniorky 55 – 60 kg' },
           { :en => 'Juniors 60 - 65 kg', :cs => 'Juniorky 60 - 65 kg' },
           { :en => 'Juniors over 65 kg', :cs => 'Juniorky nad 65 kg' },
           { :en => 'Seniors up to 50 kg', :cs => 'Seniorky do 50 kg' },
           { :en => 'Seniors 50 - 56 kg', :cs => 'Seniorky 50 – 56 kg' },
           { :en => 'Seniors 56 - 62 kg', :cs => 'Seniorky 56 – 62 kg' },
           { :en => 'Seniors 62 - 68 kg', :cs => 'Seniorky 62 – 68 kg' },
           { :en => 'Seniors 68 - 75 kg', :cs => 'Seniorky 68 – 75 kg' },
           { :en => 'Seniors over 75 kg', :cs => 'Seniorky nad 75 kg'}]
matsogi.each_index do |i|
  I18n.locale = 'en'
  cat = Matsogi.new :name => matsogi[i][:en], :sex_id => 1
  I18n.locale = 'cs'
  cat.name = matsogi[i][:cs]
  cat.sex_id = 1
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