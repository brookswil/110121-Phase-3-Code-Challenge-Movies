# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."

# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here

# Role.create(
#     movie_id: mean_girls,
#     actor_id: Actor.name,
#     character_name: 'Tina Fey',
#     salary: 300000
# )
# Role.create(
#     movie_id: spice_world,
#     actor_id: Actor.name,
#     character_name: 'Victoria Addams',
#     salary: 275000
# )
10.times do
    Role.create(
        movie_id: Movie.all.sample.id,
        actor_id: Actor.all.sample.id,
        character_name: Faker::Name.female_first_name,
        salary: Faker::Number.within(range: 225000..755000)
    )
end

puts "Seeding done!"