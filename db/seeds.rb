require 'Faker'

10.times { Category.create(:name => Faker::Name.name) }
20.times { Post.create(:category_id => (rand(10)+1), :title => Faker::Name.title,
:body => Faker::Lorem.sentence(word_count=4), :email => Faker::Internet.email) }
