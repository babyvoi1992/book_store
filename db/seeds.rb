99.times do |n|
  title = Faker::Name.title
  price = Faker::Number.decimal(2)
  author = Faker::Name.name
  Book.create!(title: title,
  price: price , author: author)
  end