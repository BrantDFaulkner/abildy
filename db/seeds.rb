
# Seed database with fixed tables
category_titles = %w[Financial Intellectual Family Spiritual Physical]
statuses = %w[Pending Approved Declined]

category_titles.each do |title|
  Category.create!(title: title)
end

statuses.each do |title|
  Status.create!(title: title)
end

# Create Primary User
brang = User.create!(user_name: "brang", email: "brang@brang.com", password: "password")
brang.goals.create!(admin_id: brang.id,
  category_id: 1,
  title: "Brang's Goal",
  description: "Brang loves to make goals and acheive them with his fellow abildians!",
  )

10.times do
  user = User.create!(user_name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
  Goal.all.each do |goal|
    Request.create!(
      goal_id: goal.id,
      user_id: user.id,
      status_id: 1,
    )
  end
  Goal.create!(
    admin_id: user.id,
    category_id: rand(1..5),
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
  )
end
