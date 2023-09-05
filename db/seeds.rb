# db/seeds.rb
Category.create(name: "Category 1", slug: "category-1")
Category.create(name: "Category 2", slug: "category-2")

Category.find_by(slug: "category-1").cuisines.create(
  name: "Cuisine 1",
  slug: "cuisine-1",
  description: "Description for Cuisine 1",
  price: 10,
  discount: 0,
  available: true
)

Category.find_by(slug: "category-2").cuisines.create(
  name: "Cuisine 2",
  slug: "cuisine-2",
  description: "Description for Cuisine 2",
  price: 12,
  discount: 0,
  available: true
)
