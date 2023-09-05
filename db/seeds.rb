# db/seeds.rb

# Create Categories
category1 = Category.create(name: "Category 1", slug: "category-1")
category2 = Category.create(name: "Category 2", slug: "category-2")
category3 = Category.create(name: "Category 3", slug: "category-3")

# Create Cuisines with Images
cuisine1 = Cuisine.create(
  name: "Cuisine 1",
  slug: "cuisine-1",
  description: "Description for Cuisine 1",
  price: 10,
  discount: 0,
  available: true,
  category: category1 # Liên kết cuisine với category đã tạo
)
cuisine1.image.attach(io: File.open(Rails.root.join('./app/assets/images', 'image.jpg')), filename: 'image.jpg')

cuisine2 = Cuisine.create(
  name: "Cuisine 2",
  slug: "cuisine-2",
  description: "Description for Cuisine 2",
  price: 12,
  discount: 0,
  available: true,
  category: category1 # Liên kết cuisine với category đã tạo
)
cuisine2.image.attach(io: File.open(Rails.root.join('./app/assets/images', 'image.jpg')), filename: 'image.jpg')

cuisine3 = Cuisine.create(
  name: "Cuisine 3",
  slug: "cuisine-3",
  description: "Description for Cuisine 3",
  price: 12,
  discount: 0,
  available: false,
  category: category1 # Liên kết cuisine với category đã tạo
)
cuisine3.image.attach(io: File.open(Rails.root.join('./app/assets/images', 'image.jpg')), filename: 'image.jpg')

# Add more cuisines with unique images as needed
