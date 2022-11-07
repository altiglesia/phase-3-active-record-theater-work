require 'faker'

puts "Seeding Data"

10.times do
    role = Role.create(
        character_name: Faker::Name.unique.name
    )

    rand(1..5).times do
        Audition.create(
            actor: Faker::Name.unique.name,
            location: Faker::Nation.capital_city,
            phone: Faker::PhoneNumber.phone_number,
            hired: Faker::Boolean.boolean,
            role_id: rand(1..3)
    )
    end
end

puts "Done Seeding!"