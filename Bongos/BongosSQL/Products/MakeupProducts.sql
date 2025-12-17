--Making Makeup category Products for e commerce website
--MAKEUP 
--FACE 
--Sample Data

--Foundation 


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


--EYES
--Eyeshadow 

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  10,
  'Huda Beauty Nude Obsessions Eyeshadow Palette',
  2239.00,
  '/ProductsImages/Makeup/Eyeshadow/huda-beauty-nude-obsessions-eyeshadow-palette.jpg',
  'Huda Beauty Nude Obsessions Eyeshadow Palette features a range of soft matte and shimmer nude tones that blend easily and work for both everyday and bold looks. Designed to flatter many skin tones with universal nude shades.',
  false,
  '{
    "skin_type": "all",
    "palette_type": "Nude Obsessions",
    "weight_g": 9
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--Eyeliner

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  11,
  'Charlotte Tilbury The Feline Flick Eyeliner',
  1699.00,
  '/ProductsImages/Makeup/Eyeliner/charlotte-tilbury-the-feline-flick-eyeliner.jpg',
  'Charlotte Tilbury The Feline Flick Eyeliner offers precise control with a smooth, rich black formula that glides easily for sharp, defined flicks. Its long-lasting texture resists smudging and stays bold throughout wear.',
  false,
  '{
    "skin_type": "all",
    "form": "Liquid",
    "waterproof": true
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--Mascara

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  12,
  'Estee Lauder Double Wear Extreme Length Mascara',
  1899.00,
  '/ProductsImages/Makeup/Mascara/estee-lauder-double-wear-extreme-length-mascara.jpg',
  'A long-wear mascara by Estée Lauder designed to deliver extreme length and lasting definition. The formula helps keep lashes looking lifted and extended while resisting smudging for a polished finish throughout the day.',
  false,
  '{
    "effect": "Lengthening",
    "brush_type": "Slim Precision Brush",
    "waterproof": false
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--Lashes 

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  13,
  'Huda Beauty Samantha False Lashes #7',
  1179.00,
  '/ProductsImages/Makeup/FalseLashes/huda-beauty-samantha-false-lashes-7.jpg',
  'Huda Beauty Samantha False Lashes #7 provide dramatic length and high volume for a bold, glamorous eye look. Lightweight and comfortable to wear, these false lashes are designed to be reusable and ideal for special occasions.',
  true,
  '{
    "length": 18,
    "volume_level": "High",
    "reusable": true
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--Cheeks
--Blush 

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  17,
  'Fenty Beauty Fenty Cheeks Powder Blush',
  1869.00,
  '/ProductsImages/Makeup/Blush/fenty-beauty-fenty-cheeks-powder-blush.jpg',
  'Fenty Beauty Fenty Cheeks Powder Blush delivers rich, blendable color with a high-performance formula that is long lasting and suitable for all skin tones. Ideal for a natural or radiant cheek look with a lightweight, breathable texture.',
  false,
  '{
    "form": "Powder",
    "finish": "Natural",
    "intensity": "Buildable"
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--HighLighter 

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  18,
  'Fenty Beauty Diamond Bomb All-Over Diamond Veil Highlighter',
  2799.00,
  '/ProductsImages/Makeup/Highlighter/fenty-beauty-diamond-bomb-all-over-diamond-veil-highlighter.jpg',
  'Fenty Beauty Diamond Bomb All-Over Diamond Veil Highlighter delivers a multidimensional sparkle with a lightweight, blendable formula. Its radiant finish enhances the complexion with a luminous sheen that catches the light beautifully.',
  false,
  '{
    "finish": "Highly Shimmery",
    "shimmer_level": "Extreme",
    "form": "Loose/Pressed Powder"
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--Bronzer 

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  19,
  'Kosas The Show Sun Powder Bronzer',
  2600.00,
  '/ProductsImages/Makeup/Bronzer/kosas-the-show-sun-powder-bronzer.jpg',
  'Kosas The Show Sun Powder Bronzer delivers a natural, sun-kissed warmth with a soft, luminous finish. Its lightweight formula blends effortlessly to provide buildable intensity and a radiant look on all skin tones.',
  true,
  '{
    "form": "Powder",
    "finish": "Natural & Luminous",
    "intensity": "Buildable"
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--Brows 

--Brow Gel

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  21,
  'Kosas Air Brow Clear Brow Gel',
  2000.00,
  '/ProductsImages/Makeup/Brows/kosas-air-brow-clear-brow-gel.jpg',
  'Kosas Air Brow Clear Brow Gel offers a lightweight, transparent formula to groom and set brows in place with flexible hold. Its buildable finish enhances natural brow shape without stiffness, perfect for everyday definition.',
  false,
  '{
    "brow_type": "All Brows",
    "hold_level": "Light",
    "volume": 0
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--Brow Pencil 

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  22,
  'Anastasia Beverly Hills Brow Pencil Chocolate',
  2089.00,
  '/ProductsImages/Makeup/Brows/anastasia-beverly-hills-brow-pencil-chocolate.jpg',
  'Anastasia Beverly Hills Brow Pencil in Chocolate offers precise definition and natural fill with a smooth, creamy formula. The versatile shade enhances brows while providing long-lasting wear and a natural finish.',
  false,
  '{
    "brow_type": "All Brows",
    "intensity": "Medium",
    "waterproof": false
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--Brow Duo Set 

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  23,
  'Sephora Collection Kit Duo Cils et Sourcils',
  1399.00,
  '/ProductsImages/Makeup/Brows/sephora-collection-kit-duo-cils-et-sourcils.jpg',
  'Sephora Collection Kit Duo Cils et Sourcils includes a Size Up Mascara and a brow wax to define lashes and shape brows beautifully. This duo offers a complete eye-enhancing set with long-lasting performance.',
  false,
  '{
    "brow_type": "All Brows",
    "waterproof": false,
    "set_items": "Mascara + Brow Wax"
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--LipStick

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  25,
  'NARS Powermatte Lipstick',
  1980.00,
  '/ProductsImages/Makeup/Lips/nars-powermatte-lipstick.jpg',
  'NARS Powermatte Lipstick delivers ultra-intense color with a smooth, lightweight matte finish. The long-wearing formula glides on effortlessly and provides bold impact with comfortable, all-day wear.',
  true,
  '{
    "color": "Mogador",
    "texture": "Matte",
    "weight_g": 1.5
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--LipGloss

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  26,
  'Tarte Maracuja Juicy Lip Shimmer Glass Plump',
  1719.00,
  '/ProductsImages/Makeup/Lips/tarte-maracuja-juicy-lip-shimmer-glass-plump.jpg',
  'Tarte Maracuja Juicy Lip Shimmer Glass Plump delivers high shine with a plumping effect for fuller-looking lips. Infused with maracuja oil, the formula provides hydration and a smooth, glossy finish with comfortable wear.',
  false,
  '{
    "shine_level": "High",
    "texture": "Shimmer Gloss",
    "volume_ml": 2.7
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--LipBalm 

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  27,
  'Summer Fridays Lip Butter Balm',
  2139.00,
  '/ProductsImages/Makeup/Lips/summer-fridays-lip-butter-balm.jpg',
  'Summer Fridays Lip Butter Balm deeply nourishes and softens the lips with a rich, buttery texture. Formulated to hydrate and repair dry lips, it leaves a smooth, glossy finish while delivering long-lasting comfort.',
  false,
  '{
    "benefits": "Hydrating, Nourishing, Repairing",
    "flavor": "Birthday Cake",
    "weight_g": 15
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--LipPencil

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  28,
  'Anastasia Beverly Hills Lip Liner',
  1259.00,
  '/ProductsImages/Makeup/Lips/anastasia-beverly-hills-lip-liner.jpg',
  'Anastasia Beverly Hills Lip Liner provides precise definition and smooth application for perfectly shaped lips. The creamy, blendable formula delivers long-lasting color payoff while enhancing lip contours with ease.',
  false,
  '{
    "intensity": "Medium",
    "color": "Baby Roses",
    "waterproof": false
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;
