# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Create 8 seed categories
users = User.create([
		{ id: 1, name: 'Richard Durand'}, { id: 2, name: 'Michael Moore'}
	])

# create 50 articles, with random titles, 250 words of content, and
# randomly assign one of the categories above to each article
for i in 0..49
	content = Faker::Lorem.paragraph(word_count=180)

	# Randomly assign one of the categories we just created.
    # The 'sample' method selects a random item from a collection.
	user = User.all.sample
	a = Twet.create(id: i+1, title: title, content: content, categories: [category,])
end
