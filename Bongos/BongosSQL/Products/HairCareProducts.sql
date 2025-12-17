--HairCares

--Shampoo

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  40,
  'Guerlain Abeille Royale Revitalizing & Strengthening Care Shampoo (290ml)',
  4870,
  '/ProductImages/HairCares/Shampoo/guerlain-abeille-royale-care-shampoo-290ml.png',
  'Revitalizing and strengthening care shampoo that helps support the scalp and hair for a healthier, more resilient appearance.',
  true,
  '{
    "hair_type": "Weak / fragile hair",
    "silicone_free": false,
    "volume_ml": 290
  }'::jsonb
)
RETURNING *;

--HairMask


INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  41,
  'L’Oréal Professionnel Serie Expert Pro Longer Hair Mask (250ml)',
  1500,
  '/ProductImages/HairCares/HairMask/loreal-pro-longer-hair-mask-250ml.png',
  'Professional strengthening mask formulated to renew hair lengths and improve the appearance of thin or damaged ends.',
  false,
  '{
    "hair_type": "Long & damaged hair",
    "curl_friendly": false,
    "volume_ml": 250
  }'::jsonb
)
RETURNING *;

--Serums&Oils

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  42,
  'L’Oréal Professionnel Serie Expert Liss Unlimited Smoothing Serum (125ml)',
  1240,
  '/ProductImages/HairCares/Oils&Serums/loreal-liss-unlimited-smoothing-serum-125ml.png',
  'Anti-frizz smoothing serum formulated with keratin to control unruly hair and provide long-lasting smoothness.',
  false,
  '{
    "hair_type": "Frizzy & unruly hair",
    "active_ingredients": "Keratin, kukui nut oil",
    "volume_ml": 125
  }'::jsonb
)
RETURNING *;

--HairWax

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  43,
  'Aveda Be Curly Advanced Curl Defining Cream (200ml)',
  1929,
  '/ProductImages/HairCares/HairWax/aveda-be-curly-advanced-curl-defining-cream-200ml.png',
  'Curl defining styling cream that enhances waves and curls, reduces frizz, and provides flexible, natural hold.',
  false,
  '{
    "hair_type": "Wavy & curly hair",
    "hold_level": 2,
    "washable": true
  }'::jsonb
)
RETURNING *;

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  43,
  'Fenty Hair The Homecurl Curl Defining Cream (100ml)',
  1439,
  '/ProductImages/HairCares/HairWax/fenty-hair-the-homecurl-curl-defining-cream-100ml.png',
  'Rich curl defining cream formulated to shape, moisturize, and enhance natural curls with soft, touchable hold.',
  false,
  '{
    "hair_type": "Curly & coily hair",
    "hold_level": 3,
    "washable": true
  }'::jsonb
)
RETURNING *;

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  43,
  'Kérastase Chroma Absolu Thermique Color-Protecting Serum (150ml)',
  2350,
  '/ProductImages/HairCares/HairWax/kerastase-chroma-absolu-thermique-serum-150ml.png',
  'Leave-in thermo-protective styling serum designed for color-treated hair to reduce frizz and protect against heat.',
  false,
  '{
    "hair_type": "Color-treated hair",
    "hold_level": 1,
    "washable": true
  }'::jsonb
)
RETURNING *;
