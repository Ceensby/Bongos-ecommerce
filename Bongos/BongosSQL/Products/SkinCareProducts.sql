--SkinCares 

--Cleanser 

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  35,
  'La Mer The Cool Micellar Cleanser',
  8130.00,
  '/ProductsImages/SkinCares/Cleanser/la-mer-the-cool-micellar-cleanser-200ml.jpg',
  'La Mer The Cool Micellar Cleanser is a refreshing micellar water inspired by the sea. It effectively removes makeup and impurities without rinsing, leaving the skin purified, soothed, and refreshed. Size: 200 ml.',
  false,
  '{
    "skin_type": "Normal to Sensitive",
    "fragrance": "Marine Fresh",
    "volume_ml": 200
  }'::jsonb
)
RETURNING *;

--Moisturizer

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  36,
  'BYOMA Moisturizing Gel Cream (50ml)',
  1219,
  '/ProductsImages/SkinCares/moisturizer/byoma-moisturizing-gel-cream-50ml.png',
  'Moisturizing gel cream suitable for sensitive skin; helps strengthen the skin barrier and provide a calmer appearance.',
  true,
  '{
    "skin_type": "Sensitive skin",
    "key_ingredients": "Ceramide complex, niacinamide, green tea",
    "usage_time": "Morning & night"
  }'::jsonb
)
RETURNING *;

--Serum

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  37,
  'Glow Recipe Watermelon Glow Hue Drops – Niacinamide Brightening Serum (40ml)',
  2649,
  '/ProductsImages/SkinCares/Serum/glow-recipe-watermelon-glow-hue-drops-40ml.png',
  'Clinically effective and tinted serum formulated to enhance radiance while providing a natural glow to the skin.',
  false,
  '{
    "skin_type": "All skin types",
    "active_ingredients": "Niacinamide, watermelon extract",
    "volume_ml": 40
  }'::jsonb
)
RETURNING *;


--SunCreams 

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  38,
  'Summer Fridays ShadeDrops Mineral Milk Sunscreen SPF 30 (50ml)',
  3439,
  '/ProductsImages/SkinCares/SunCreams/summer-fridays-shadedrops-spf30-50ml.png',
  'Lightweight mineral sunscreen that helps protect the skin against UVA and UVB rays while delivering a natural finish.',
  true,
  '{
    "skin_type": "All skin types",
    "spf": 30,
    "volume_ml": 50
  }'::jsonb
)
RETURNING *;

