reviews = []
5.times do
  reviews << Review.create(
    reviewer: Faker::GameOfThrones.character,
    review: Faker::Hipster.sentence
  )
end
