User.create!(name: "Hector Carrillo", 
			email: "carrfane@gmail.com",
			password: "gnr63428",
			password_confirmation: "gnr63428",
			admin: true,
			activated: true,
            activated_at: Time.zone.now)

99.times do |n|
	name  = Faker::Name.name
	email = "ruby-#{n}@gmail.com"
	password = "gnr63428"
	User.create!(name: name,
				email: email,
				password: password,
				password_confirmation: password,
				activated: true,
             	activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end