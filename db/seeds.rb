# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.destroy_all
User.destroy_all
#empty database before adding new data

#create three teams with five players per team
3.times do 
	team = Team.create(
		name: Faker::Team.name,
		sport: Faker::Team.sport
		)
			#pass in hash, so name the column and pass in data


	5.times do
		team.users.create(
			name: Faker::Name.unique.name
			)

	end
end