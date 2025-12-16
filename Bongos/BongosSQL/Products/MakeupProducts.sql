--Making Makeup category Products for e commerce website
--MAKEUP 
--FACE 
--Foundation 

--Sample Data 

INSERT INTO products (category_id,name, price, image_url, description, featured, attributes)
VALUES (
    3,
  'Charlotte Tilbury Airbrush Flawless Foundation',
  3600.00,
  '/ProductsImages/Makeup/Foundation/charlotte-tilbury-airbrush-flawless-foundation.jpeg',
  'Charlotte’s 7-in-1 AIRBRUSH SKIN MIRACLE formula, powered by Biomimetic Second-Skin Tech™, Powder Blur AirTech™, and Phytoyouth Essence™ Time Machine Extract, helps deliver smoother, firmer, and visibly more youthful-looking skin with every application.',
  True,
  '{
    "skin_type": "Karma",
    "coverage": "Full",
    "volume_ml": 50
  }'::jsonb
)

RETURNING product_id,category_id, name, price, attributes;

--Concealer

INSERT INTO products (category_id,name, price, image_url, description, featured, attributes)
VALUES (
    4,
  'Tarte Shape Tape Concealer',
  2100.00,
  '/ProductsImages/Makeup/Concealer/Tarte-Shape-Tape-Concealer.jpeg',
  'The best-selling tarte™ product, shape tape™ concealer!
Its full-coverage formula delivers up to 16 hours of flawless wear.
It smooths and brightens the under-eye area, making the eyes appear lifted.
Its crease-free formula does not look cakey or settle into fine lines.',
  False,
  '{
    "skin_type": "dry",
    "coverage": "light",
    "volume_ml": 5
  }'::jsonb
)

RETURNING product_id,category_id, name, price, attributes;

--MakeupBase

INSERT INTO products (category_id,name,price,image_url,description,featured,attributes)
VALUES (
  5,
  'Rare Beauty Always An Optimist 4-in-1 Mist',
  1800.00,
  '/ProductsImages/Makeup/MakeupBase/rare-beauty-always-an-optimist-4-in-1-mist-100ml.jpg',
  'A refreshing 4-in-1 face mist that can be used to prime, set, and refresh makeup while providing an instant boost of hydration. The ultra-fine spray helps skin look smooth, radiant, and makeup-ready throughout the day.',
  false,
  '{
    "skin_type": "All",
    "finish": "Hydrating",
    "volume_ml": 100
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--BakingPowder

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  6,
  'Hourglass Ambient Lighting Powder',
  3300.00,
  '/ProductsImages/Makeup/Powder/hourglass-ambient-lighting-powder-10g.jpg',
  'A finishing powder that uses photoluminescent technology to enhance the look of skin in any light. It blurs imperfections, softens the appearance of pores and fine lines, and gives a naturally radiant, lit-from-within finish.',
  false,
  '{
    "finish": "Radiant",
    "weight_g": 10,
    "powder_type": "Pressed"
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;


--Contour 

INSERT INTO products ( category_id, name, price, image_url, description, featured, attributes
)
VALUES (
   7,
  'Sephora Collection Contour Stick',
  899.00,
  '/ProductsImages/Makeup/Contour/sephora-collection-contour-stick-5g.jpg',
  'A creamy contour stick designed to sculpt and define facial features with ease. The smooth, blendable formula glides onto the skin for a natural-looking contour that melts seamlessly without patchiness.',
  false,
  '{
    "weight_g": 5,
    "skin_type": "oily",
    "form": "Cream Stick"
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;


