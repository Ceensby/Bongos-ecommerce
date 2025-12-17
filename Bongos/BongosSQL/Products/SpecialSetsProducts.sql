--Special Sets

--Sets for Gifts 

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  45,
  'Sol de Janeiro Spritz The Season Cheirosa Perfumed Body Spray Set (5 x 30ml)',
  3199,
  '/ProductsImages/SpecialSets/SetsForGifts/sol-de-janeiro-spritz-the-season-cheirosa-set.png',
  'Holiday fragrance mist gift set featuring multiple iconic Cheirosa scents in travel-size sprays.',
  True,
  '{
    "age_group": "Adult",
    "gender": "Unisex",
    "product_count": 5
  }'::jsonb
)
RETURNING *;

--Makeup Sets 


INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  46,
  'Tarte Lil’ Treats Maracuja Juicy Lip Trio',
  1979,
  '/ProductsImages/SpecialSets/MakeupSets/tarte-lil-treats-maracuja-juicy-lip-trio.png',
  'Holiday lip makeup set including three Maracuja Juicy Lip products for hydrated, glossy lips.',
  true,
  '{
    "product_count": 3,
    "kit_type": "Lip Makeup Set",
    "coverage": "Medium"
  }'::jsonb
)
RETURNING *;


--Skin Care Sets 


INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  47,
  'Rituals The Ritual of Sakura Body & Bath Gift Set (S)',
  1649,
  '/ProductsImages/SpecialSets/SkinCareSets/rituals-the-ritual-of-sakura-body-bath-gift-set-s.png',
  'Relaxing body and skincare gift set inspired by cherry blossom and rice milk, perfect for daily body care rituals.',
  true,
  '{
    "skin_type": "Normal to Dry",
    "product_count": 4,
    "usage_time": "Daily"
  }'::jsonb
)
RETURNING *;


--Minis & Travel Size


INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  48,
  'Tarte Maneater™ Plumped Up Travel Must-Haves Set',
  1929,
  '/ProductsImages/SpecialSets/Minis&TravelSize/tarte-maneater-plumped-up-travel-must-haves-set.png',
  'Travel-size makeup essentials set featuring best-selling Maneater products for eyes and lips, perfect for vacations.',
  false,
  '{
    "product_count": 3,
    "mini": true,
    "limited_edition": true
  }'::jsonb
)
RETURNING *;


