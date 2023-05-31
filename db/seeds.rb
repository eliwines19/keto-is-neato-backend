# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = Category.create([{name: "Soups/Salads"}, {name: "Poultry"}, {name: "Beef"}, {name: "Seafood"}, {name: "Dessert"}])

cat1 = Category.find_by(name: "Soups/Salads")
cat2 = Category.find_by(name: "Poultry")
cat3 = Category.find_by(name: "Beef")
cat4 = Category.find_by(name: "Seafood")
cat5 = Category.find_by(name: "Dessert")


recipes = Recipe.create([
    {
        name: "Broccoli cheddar oup",
        ingredients: ["1 1/ cups chopped frozen broccoli",
            "2 1/2 cups half and half",
            "1 ½ lbs shredded cheddar",
            "½  teaspoon garlic powder",
            "½ teaspoon onion powder",
            "2 tablespoons butter",
            "Salt and pepper"],
        image_url: "https://google.com",
        category_id: cat1.id
    },
    {
        name: "Angies Cobb Salad",
        ingredients: ["1 ½ cups Greens of Choice",
            "¼ cup shredded cheddar",
            "1 tablespoons Ranch dressing",
            "¼ cup chopped bacon bits",
            "1 hard boiled egg",
            "½ tablespoon mustard"],
        image_url: "https://google.com",
        category_id: cat1.id
    },
    {
        name: "Buffalo Chicken Wraps - 2 ½ hour cook time on high",
        ingredients: ["2 lbs chicken tenders",
            "1 teaspoon smoked paprika",
            "1 teaspoon onion powder",
            "1 teaspoon chili powder",
            "1 ½ tablespoons melted butter",
            "½ - ¾ cup buffalo sauce"],
        image_url: "https://google.com",
        category_id: cat2.id
    },
    {
        name: "Chicken Parmesan",
        ingredients: ["2 lbs boneless, skinless, thin sliced chicken breast",
            "24 Oz of Rao's Marinara",
            "½ - ¾ lb sliced or shredded provolone"],
        image_url: "https://google.com",
        category_id: cat2.id
    },
    {
        name: "Chicken Caccitorie",
        ingredients: ["2 tablespoons extra virgin olive oil",
            "4 cloves minced garlic",
            "4-5 chicken breats",
            "3 ½ cups tmto sauce",
            "3 sliced bell peppers",
            "1 6oz can drained mushrooms",
            "1 teaspoon oregano",
            "1 teaspoon thyme"],
        image_url: "https://google.com",
        category_id: cat2.id
    },
    {
        name: "Chicken Bacon Ranch Wraps",
        ingredients: ["1 Rotisseri Chicken",
            "4 oz sour cream",
            "4 oz cream cheese",
            "½ teaspoon poultry seasoning",
            "½ packet dry dranch seasoning",
            "16oz cooked crispy, chopped bacon",
            "¾ lb shredded cheddar cheese"],
        image_url: "https://google.com",
        category_id: cat2.id
    },
    {
        name: "Perfect Roast turkey",
        ingredients: ["10-12 lb thawed turkey",
            "¼ lb butter",
            "1 lemon zest w/ juice",
            "1 tablespoon chopped thyme",
            "1 teaspoon sage",
            "1 teaspoon rosemary",
            "1 onion quartered",
            "1 large head of garlic halved(cross wise)"],
        image_url: "https://google.com",
        category_id: cat2.id
    },
    {
        name: "Creamed Beef on toast",
        ingredients: ["8 slices toasted bread",
            "8 oz cream cheese at room temp",
            "1 tablespoon butter",
            "1 tablespoon bacon dripping",
            "1 - 1 ½ lbs ground beef",
            "Equal parts salt and pepper",
            "Dried chives (for serving)"],
        image_url: "https://google.com",
        category_id: cat3.id
    },
    {
        name: "Spicy cheesesteak wraps",
        ingredients: ["1 ½ - 2 lbs thin sliced beef",
            "2 tablespoons butter",
            "2 tablepspons worcester sauce",
            "2 tablespoons cocoaminos",
            "1 teaspoon onion powder",
            "4 slices american cheese",
            "4 slices pepper jack cheese",
            "Chipotle suce (for serving)"],
        image_url: "https://google.com",
        category_id: cat3.id
    },
    {
        name: "Moms Famous Cheese burgers",
        ingredients: ["3 tablespoons butter; divided",
            "1 tablespppon olive oil",
            "2 thin sliced yellow onions",
            "1 ½ lbs ground beef",
            "1 tablespoon worcester sauce",
            "1 teaspoon liquid smoke",
            "Coasters sea salt",
            "Fresh cracked black pepper",
            "4 oz chevre",
            "⅓ cup half and half or heavy cream",
            "⅓ teaspoon dry mustard"],
        image_url: "https://google.com",
        category_id: cat3.id
    },
    {
        name: "Buffalo Bell peppers",
        ingredients: ["1 lb ground beef",
            "¾ cup buffalo sauce",
            "4 oz cream cheese",
            "15 oz jared alfredo sauce",
            "1 cup shredded colby jack divided",
            "6-8 bell peppers",
            "Chives for garnish"],
        image_url: "https://google.com",
        category_id: cat3.id
    },
    {
        name: "Italian chicago beef sandwiches",
        ingredients: ["3 lb boneless country style rbs",
            "2 sliced bell peppers",
            "1 ½ tablespoon worcester sauce",
            "¼ cup red wine",
            "1 oven roasted bulb of garlic",
            "28 oz can crushed tomatoes",
            "1 tablespoon:n basil, marjoram, oregano, garlic powder",
            "1 teaspoon poultry seasoning"],
        image_url: "https://google.com",
        category_id: cat3.id
    },
    {
        name: "Parmesan & Herb Flounder",
        ingredients: ["4 flounder filets (adjust according to number of people)",
            "⅔ cup parmesan cheese",
            "¼ cup mayonnaise",
            "2 tablespoons minced green onion",
            "1 teaspoon dried basil",
            "1 teaspoon dried oregano",
            "Salt and pepper"],
        image_url: "https://google.com",
        category_id: cat4.id
    },
    {
        name: "Tuna Cheddar burgers",
        ingredients: ["2 cans tuna in oil drained",
            "1 ½ cups shredded cheddar cheese",
            "2 eggs",
            "2 tablespoons butter",
            "Cracked black pepper",
            "Dill pickle sauce for serving",
            "Optional: lemon-may spread"],
        image_url: "https://google.com",
        category_id: cat4.id
    },
    {
        name: "Jambalaya",
        ingredients: ["½ cup olive oil",
            "¾ teaspoon: cayenne, smoked paprika, chili powder",
            "2 chopped yellow onion",
            "2 chopped bell pepper",
            "2lb andouille sausage cut into slices",
            "1 lb chicken cubbed",
            "3 bay leaves",
            "1 cup chopped green onion",
            "1 lb shrimp"],
        image_url: "https://google.com",
        category_id: cat4.id
    },
    {
        name: "Baked italian cod",
        ingredients: ["2 lb cod filets",
            "1 can fire roasted tomatoes (drained)",
            "¼ cup olive oil",
            "Himalayan salt and black pepper",
            "½ tablespoon: garlic powder, onion powder, basil, oregano",
            "1 lemon juiced and zested"],
        image_url: "https://google.com",
        category_id: cat4.id
    },
    {
        name: "Crab gravy",
        ingredients: ["2 tablespoons olive oil",
            "2 tablespoons butter",
            "1 medium size, diced white onion",
            "4 cloves minced garlic",
            "1 ½ cups white wine",
            "1 tablespoon oregano",
            "1 bayleaf",
            "½ lemon juiced and zest",
            "1 lb crabmeat lump",
            "Fresh torn basil",
            "2 tablespoon sundried tomato pesto",
            "Fresh fennel fronds"],
        image_url: "https://google.com",
        category_id: cat4.id
    },
    {
        name: "Keto Choclate Chip cookes",
        ingredients: ["1 cup melted butter",
            "2 teaspoon vanilla extract",
            "2 eggs",
            "1 cup great value baking stevia",
            "3 cups almond flour",
            "1 teaspoon baking powder",
            "Sprinkle salt",
            "1 cup chocolate chips"],
        image_url: "https://google.com",
        category_id: cat5.id
    },
    {
        name: "Peanut Butter cookies",
        ingredients: ["¾ cup sugar free pancake syrup",
            "¾ cup peanut butter",
            "5 packets truvia",
            "2 tablespoon swerve",
            "½ cup softened butter",
            "1 large egg",
            "1 tablespoon vanilla extract",
            "1 ½ cups fine ground almond flour",
            "¾ cup coconut flour",
            "¾ teaspoon baking soda",
            "½ teaspoon salt",
            "¼ teaspoon xanathan gum"],
        image_url: "https://google.com",
        category_id: cat5.id
    },
    {
        name: "Choclate Cake",
        ingredients: ["1 cup rebel cookies and cream at room temperature",
            "1 egg",
            "2 tablespoons vanilla extract",
            "1/34 cup sugar free pancake syrup",
            "8 tablespoon butter at room temperature",
            "1 cup almond flour",
            "1 teaspoon salt",
            "¼ cup coconut flour",
            "1 teaspoon baking powder",
            "¼ cup chocolate chips"],
        image_url: "https://google.com",
        category_id: cat5.id
    },
    {
        name: "Peanut Butter bars",
        ingredients: ["1 ½ cups aloud flour",
            "1 cup melted peanut butter",
            "8 tablespoons melted butter",
            "4 packets stevia"],
        image_url: "https://google.com",
        category_id: cat5.id
    }
])