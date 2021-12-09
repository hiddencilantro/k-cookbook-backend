# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kimchi = Category.create(name: 'Kimchi')
pancake = Category.create(name: 'Jeon (Pancake)')
porridge = Category.create(name: 'Juk (Porridge)')
noodle = Category.create(name: 'Myeon (Noodles)')
entree = Category.create(name: 'Entrees')

Recipe.create([
    {
        name: 'Buchujeon (Chive Pancake)',
        description: 'A Korean style pancake made from garlic chives and usually dipped in a soy-based dipping sauce. Works great as an appetizer or a side dish.',
        image: 'https://static.wtable.co.kr/image/production/service/recipe/763/721b77af-5566-49a0-93af-811448005c1c.jpg',
        ingredients: [
            '1 cup flour, sifted',
            '1 Tbsp cornstarch',
            '1 & 1/8 tsp fine grain salt',
            '1 & 1/8 tsp garlic powder',
            '1 & 1/8 tsp onion powder',
            '1 cup icy cold water',
            '90g (3.2oz) garlic chives, cut in half',
            '150g (5.3oz) prawns, diced',
            'Ground black pepper (to season prawns)',
            '1 red chili pepper, thinly sliced at an angle (optional)',
            '3 Tbsp cooking oil or rice bran oil'
            ],
        instructions: [
            'Add flour, cornstarch, sea salt, garlic powder, onion powder and the icy cold water to a medium sized bowl and stir (whisk).',
            'Add Korean chives and prawns into the batter and mix thoroughly.',
            'Preheat frying pan on high heat. Add cooking oil and ensure the oil is spread evenly. Drop a bit of pancake batter into the pan to check if the temperature is ready (should slightly sizzle) then reduce the heat to medium-high heat.',
            'Scoop the pancake mixture with a ladle and spread it evenly across the pan. (Do not make the pancakes too thick.)',
            'Reduce to medium heat. Slightly move the pancake around to prevent it from sticking to the pan.',
            'After about 4 minutes on one side, flip the pancake when it appears partially cooked. Add some more cooking oil around the edges if necessary.',
            'Firmly press the pancake down into the pan with a spatula to make it more crispy. Cook for 3-4 more minutes.',
            'Turn the heat off and move it to a plate or a cutting board.',
            'Repeat steps 4 through 8',
            'Slice pancakes to a desirable size. Serve with soy-based dipping sauce and enjoy!'
            ],
        category: pancake
    },
    {
        name: 'Japchae (Stir-fried Glass Noodles)',
        description: 'A well-known and popular dish consisting of mixed vegetables and glass noodles. It is particularly eaten during the festive holidays in Korea. Typically served as a side dish.',
        image: 'https://t1.daumcdn.net/cfile/blog/2744924558848FB930',
        ingredients: [
            '250g (8.8oz) Korean sweet potato starch noodles (dangmyeon)',
            '100g (3.5oz) ribeye filet strips',
            '1 peeled carrot (roughly 120g or 4.2oz), julienned',
            '110g (3.9oz) baby spinach',
            '1/2 yellow onion (roughly 105g or 3.7oz), thinly sliced',
            '100g (3.5oz) shiitake mushrooms, stems removed & thinly sliced',
            'Spinach: 1/4 tsp fine sea salt',
            'Spinach: 1/2 tsp minced garlic',
            'Spinach: 1 tsp toasted sesame oil',
            'Beef marinade: 1 Tbsp soy sauce',
            'Beef marinade: 1 tsp rice wine (mirin)',
            'Beef marinade: 1/2 tsp minced garlic',
            'Beef marinade: 1/4 tsp ground black pepper',
            'Beef marinade: 1 tsp toasted sesame oil',
            'Noodles & Mushroom marinade: 4 Tbsp soy sauce',
            'Noodles & Mushroom marinade: 1 Tbsp honey',
            'Noodles & Mushroom marinade: 1 Tbsp brown sugar',
            'Noodles & Mushroom marinade: 1 Tbsp toasted sesame oil',
            'Noodles & Mushroom marinade: 1/8 tsp ground black pepper',
            'Other: 1 Tbsp toasted sesame seeds',
            'Other: 1 Tbsp toasted sesame oil',
            'Other: 1 Egg, egg whites and yolk separated (optional)',
            'Other: cooking oil (or rice bran oil)',
            'Other: fine sea salt'
            ],
        instructions: [
            "Place the beef strips into a medium sized bowl. Add the 'beef marinade', cover the bowl with a lid or a wrap and set it aside.",
            "Prepare the vegetables. Put the sliced mushrooms into a medium sized bowl and add 1 Tbsp of the 'noodles & mushroom marinade'. Mix well and set it aside.",
            "Briefly blanch the spinach in boiling water (5 to 10 seconds). Drain the water and quickly cool it by running it under cold water. Firmly squeeze the blanched spinach to remove any excess water and place it into a mixing bowl.",
            "Add the 'spinach seasoning' and mix them gently. Put it into a larger mixing bowl for later.",
            "Cook the noodles in boiling water for about 6 to 7 mins. Rinse in cold water and let the noodles sit for 1-2 minutes until the water is drained.",
            "Cut the noodles with a pair of scissors so they are about 15-20cm (6-8 inches) in length. Move the noodles into a mixing bowl and pour in the rest of the 'noodles & mushroom marinade'. Mix well and set it aside.",
            "Beat the egg whites. Add some cooking oil (1 tsp) on a well heated pan and spread it evenly. Pour the egg whites onto the pan and delicately cook both sides on low heat (1-2 mins). Move it to a cutting board and set aside.",
            "Repeat the step for the egg yolk.",
            "Add more oil if necessary. Cook the onion with a pinch of salt over low to medium heat until it softens (1-2 mins). Transfer it to the large mixing bowl.",
            "Repeat the same step for the carrots, mushrooms, beef and noodles.",
            "Julienne the egg whites and yolk and add them to the large mixing bowl as well.",
            "Add some sesame oil and sesame seeds into the bowl and gently mix using your hands. (Take caution for some of the ingredients, particularly the noodles, might still be hot.)",
            "Serve onto a plate and enjoy!"
            ],
        category: noodle
    },
    {
        name: 'Hobakjuk (Pumpkin Porridge)',
        description: 'A traditional Korean comfort food and a popular snack and/or dessert. Sweet and nutty in flavor and is sometimes also served for breakfast.',
        image: 'http://image.auction.co.kr/itemimage/17/9c/a8/179ca8bd61.jpg',
        ingredients: [
            '1.7 kg (3.7 lbs) kabocha squash/kent pumpkin (or butternut squash)',
            '3 cups water',
            '1/4 cup sweet rice flour',
            '3 Tbsp water',
            '3 Tbsp raw sugar (to taste)',
            '1/2 tsp fine sea salt'
            ],
        instructions: [
            "Slice the pumpkin (kabocha squash) into four large pieces. Remove the seeds and stringy bits with a knife and/or spoon.",
            "Steam them over boiling water until the pumpkin turns tender and soft.",
            "Wait for it to cool then peel the pumpkin leaving just the parts you can eat. Then chop into smaller chunks.",
            "Mix the pumpkin, 3 cups of water, sugar and the salt in a blender until it becomes a puree.",
            "Pour the puree into a medium sized saucepan and boil it over medium-high heat for 10 min. (Stir often)",
            "In a small bowl, combine and mix the sweet rice flour with about 3 Tbsp of water. It should become a sticky/gluey texture.",
            "Gradually pour it into the pumpkin porridge and stir it consistently to prevent it from forming lumps.",
            "Simmer the porridge over low heat for another 3 mins then take it off the heat and serve. (You may optionally garnish with rice cake balls.)"
            ],
        category: porridge
    }
])