require 'Faker'

10.times {Category.create(:name => Faker::Name.name)}
