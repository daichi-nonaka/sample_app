namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
<<<<<<< HEAD
    admin = User.create!(name: "Example User",
                         email: "example@railstutorial.org",
                         password: "foobar",
                         admin: true)
=======
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar")
>>>>>>> fadab1e8e4fc52db75c637b3b03b82a74dd076b4
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password)
    end
<<<<<<< HEAD
    
    users = User.limit(6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
=======
>>>>>>> fadab1e8e4fc52db75c637b3b03b82a74dd076b4
  end
end