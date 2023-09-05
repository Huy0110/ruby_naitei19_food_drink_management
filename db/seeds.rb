# db/seeds.rb
Category.create(name: "Category 1", slug: "category-1")
Category.create(name: "Category 2", slug: "category-2")
Category.create(name: "Category 3", slug: "category-3")

Category.find_by(slug: "category-1").cuisines.create(
  name: "Cuisine 1",
  slug: "cuisine-1",
  description: "Description for Cuisine 1",
  price: 10,
  discount: 0,
  available: true
)

Category.find_by(slug: "category-1").cuisines.create(
  name: "Cuisine 12",
  slug: "cuisine-12",
  description: "Description for Cuisine 12",
  price: 10,
  discount: 0,
  available: true
)

Category.find_by(slug: "category-1").cuisines.create(
  name: "Cuisine 13",
  slug: "cuisine-13",
  description: "Description for Cuisine 13",
  price: 10,
  discount: 0,
  available: true
)

Category.find_by(slug: "category-1").cuisines.create(
  name: "Cuisine 14",
  slug: "cuisine-14",
  description: "Description for Cuisine 14",
  price: 10,
  discount: 0,
  available: true
)

Category.find_by(slug: "category-1").cuisines.create(
  name: "Cuisine 14",
  slug: "cuisine-14",
  description: "Description for Cuisine 14",
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

Category.find_by(slug: "category-3").cuisines.create(
  name: "Cuisine 3",
  slug: "cuisine-3",
  description: "Description for Cuisine 3",
  price: 22,
  discount: 0,
  available: true
)

Category.find_by(slug: "category-3").cuisines.create(
  name: "Cuisine 31",
  slug: "cuisine-31",
  description: "Description for Cuisine 31",
  price: 22,
  discount: 0,
  available: true
)
