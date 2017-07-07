# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by(email: 'pierre@michaux.com') do |user|
  user.password = 'progenitor'
end

5.times { |i| BicycleCategory.create(title: "Category#{i}") }

15.times do |i|
  Bicycle.create(
    name: "Bicycle #{i}",
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse nemo ut incidunt rem, neque laudantium iusto maiores repellendus ipsam eligendi?',
    bicycle_category_id: Category.first.id,
    user_id: User.first.id
  )
end
