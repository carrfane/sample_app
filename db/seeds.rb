User.create!(name: "Hector Carrillo", 
			email: "carrfane@gmail.com",
			password: "gnr63428",
			password_confirmation: "gnr63428",
			admin: true)

99.times do |n|
	name  = Faker::Name.name
	email = "ruby-#{n}@gmail.com"
	password = "gnr63428"
	User.create!(name: name,
				email: email,
				password: password,
				password_confirmation: password)
end