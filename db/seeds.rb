require 'faker'

Drinker.destroy_all

10.times do
    Drinker.create(
        name: Faker::Name.first_name,
        goal: Faker::Number.within(range: 1..10),
        bottle_id: Faker::Number.within(range: 1..10)
    )
end
