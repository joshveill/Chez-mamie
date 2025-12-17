#!/bin/bash
# Download recipe images from Unsplash

mkdir -p src/assets/recipes

download() {
  local slug=$1
  local search=$2
  echo "Downloading: $slug ($search)"
  curl -sL "https://source.unsplash.com/800x600/?${search// /,}" -o "src/assets/recipes/${slug}.jpg"
  sleep 0.5
}

echo "Downloading recipe images from Unsplash..."

# Plats Principaux
download "boeuf-hache-tomates" "ground beef tomato"
download "boulettes-chinois" "asian meatballs"
download "boulettes-jambon-ananas" "ham pineapple meatballs"
download "boulettes-sauce-bbq" "bbq meatballs"
download "brochettes-de-poulet" "chicken skewers grilled"
download "carre-de-porc-en-croute" "pork roast crust"
download "cotelettes-espagnole" "pork chops"
download "crepes" "french crepes"
download "lasagne" "lasagna"
download "macaroni-chinois" "asian noodles stir fry"
download "pain-de-viande" "meatloaf"
download "pain-farcis" "stuffed bread meat"
download "pate-au-poulet" "chicken pot pie"
download "pilon-poulet-asiatique" "asian chicken drumsticks"
download "poivrons-farci" "stuffed peppers"
download "poulet-a-mom" "roasted chicken"
download "poulet-au-ketchup" "glazed chicken"
download "poulet-aux-ananas" "pineapple chicken"
download "poulet-peruvian-broche" "rotisserie chicken"
download "ravioli-et-sauce" "ravioli pasta"
download "ribs-charcoal" "bbq ribs"
download "riz-au-poulet" "chicken rice bowl"
download "sonny-shrimp-skewers" "shrimp skewers"

# Desserts
download "biscuits-gruau-chocolate" "oatmeal chocolate cookies"
download "chocolat-laura-secord" "chocolate fudge"
download "chocolat-meredith" "chocolate dessert"
download "cornflakes-au-chocolat" "chocolate cereal treats"
download "croustade-pommes-erable" "apple crisp"
download "delices-aux-ananas" "pineapple dessert"
download "fudge" "chocolate fudge squares"
download "gateau-crunchie" "crunch cake"
download "gateau-hawaien" "pineapple cake"
download "glacage-au-chocolat" "chocolate frosting"
download "guimauves-rice-krispies" "rice krispies treats"
download "pain-aux-bananes" "banana bread"
download "pate-a-tarte" "pie crust"
download "pouding-au-chocolat" "chocolate pudding"
download "pouding-aux-framboises" "raspberry dessert"
download "sauce-au-caramel" "caramel sauce"
download "sucre-a-la-creme" "maple fudge"

# Sauces et Marinades
download "beurre-a-lail" "garlic butter"
download "beurre-amandine" "almond butter sauce"
download "coulis-bleuets" "blueberry sauce"
download "ketchup-rouge" "homemade ketchup"
download "ketchup-vert" "green tomato relish"
download "marinade-filet-de-porc" "pork marinade"
download "marinade-poulet" "chicken marinade"
download "marinade-pour-viande" "meat marinade herbs"
download "salsa" "fresh salsa"
download "sauce-a-salade" "salad dressing"
download "sauce-au-chocolat" "chocolate sauce"
download "sauce-bbq" "bbq sauce"
download "sauce-coleslaw" "coleslaw"
download "sauce-spaghetti" "spaghetti sauce"
download "sauce-tomate-lasagne" "tomato sauce"
download "sauces-trempettes-fondu" "fondue sauce"
download "trempette" "creamy dip"
download "trempette-nancy" "vegetable dip"
download "vinaigre-framboise" "raspberry vinegar"
download "vinaigrette-cesar" "caesar salad dressing"
download "vinaigrette-diana" "vinaigrette"

# Accompagnements
download "betteraves" "pickled beets"

# Soupes
download "bouillon-aux-legumes" "vegetable soup broth"
download "bouillon-fondu-chinoise" "hot pot broth"
download "potage-poireau-patates-douces" "leek potato soup"
download "soupe-a-loignon" "french onion soup"

echo "Done downloading images!"
