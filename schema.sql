--We cant make same subcategory name under one main category-- 
CREATE UNIQUE INDEX IF NOT EXISTS ux_categories_parent_name
ON categories (parent_id, name);

-- Makeup>Face>Subcategories

-- Ana kategori (Makeup), alt kategori (Face) ve Face'e bağlı alt kategorileri 
--ON CONFLICT + RETURNING ile ekleme yaptık.

WITH
makeup AS (
  INSERT INTO categories (name, parent_id)
  VALUES ('Makeup', NULL)
  ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name
  RETURNING category_id
),
makeup_id AS (
  SELECT category_id FROM makeup
  UNION ALL
  SELECT category_id FROM categories
  WHERE name='Makeup' AND parent_id IS NULL
  LIMIT 1
),
face AS (
  INSERT INTO categories (name, parent_id)
  SELECT 'Face', category_id FROM makeup_id
  ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name
  RETURNING category_id
),
face_id AS (
  SELECT category_id FROM face
  UNION ALL
  SELECT c.category_id
  FROM categories c
  JOIN makeup_id m ON c.parent_id = m.category_id
  WHERE c.name='Face'
  LIMIT 1
)
INSERT INTO categories (name, parent_id)
SELECT v.name, f.category_id
FROM (VALUES
  ('Foundation'),
  ('Concealer'),
  ('Makeup Base'),
  ('Baking Powder'),
  ('Contour')
) AS v(name)
CROSS JOIN face_id f
ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name;

-- Makeup>Eyes>Subcategories 

WITH
makeup AS (
  INSERT INTO categories (name, parent_id)
  VALUES ('Makeup', NULL)
  ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name
  RETURNING category_id
),
makeup_id AS (
  SELECT category_id FROM makeup
  UNION ALL
  SELECT category_id FROM categories
  WHERE name='Makeup' AND parent_id IS NULL
  LIMIT 1
),
eyes AS (
  INSERT INTO categories (name, parent_id)
  SELECT 'Eyes', category_id FROM makeup_id
  ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name
  RETURNING category_id
),
eyes_id AS (
  SELECT category_id FROM eyes
  UNION ALL
  SELECT c.category_id
  FROM categories c
  JOIN makeup_id m ON c.parent_id = m.category_id
  WHERE c.name='Eyes'
  LIMIT 1
)
INSERT INTO categories (name, parent_id)
SELECT v.name, e.category_id
FROM (VALUES
  ('Eyeshadow'),
  ('Eyeliner'),
  ('Mascara'),
  ('Lashes')
) AS v(name)
CROSS JOIN eyes_id e
ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name;


--No more 2 makeup category because makeup categry is the main category.

CREATE UNIQUE INDEX IF NOT EXISTS ux_categories_root_name
ON categories (name)
WHERE parent_id IS NULL;


-- Makeup>Cheeks>Subcategories 

WITH
makeup_id AS (
  SELECT category_id
  FROM categories
  WHERE name = 'Makeup' AND parent_id IS NULL
  LIMIT 1
),
cheeks AS (
  INSERT INTO categories (name, parent_id)
  SELECT 'Cheeks', category_id FROM makeup_id
  ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name
  RETURNING category_id
),
cheeks_id AS (
  SELECT category_id FROM cheeks
  UNION ALL
  SELECT c.category_id
  FROM categories c
  JOIN makeup_id m ON c.parent_id = m.category_id
  WHERE c.name='Cheeks'
  LIMIT 1
)
INSERT INTO categories (name, parent_id)
SELECT v.name, ch.category_id
FROM (VALUES
  ('Blush'),
  ('Highlighter'),
  ('Bronzer')
) AS v(name)
CROSS JOIN cheeks_id ch
ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name;

-- Makeup>Brows>Subcategories

WITH
makeup_id AS (
  SELECT category_id
  FROM categories
  WHERE name = 'Makeup' AND parent_id IS NULL
  LIMIT 1
),
brows AS (
  INSERT INTO categories (name, parent_id)
  SELECT 'Brows', category_id FROM makeup_id
  ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name
  RETURNING category_id
),
brows_id AS (
  SELECT category_id FROM brows
  UNION ALL
  SELECT c.category_id
  FROM categories c
  JOIN makeup_id m ON c.parent_id = m.category_id
  WHERE c.name='Brows'
  LIMIT 1
)
INSERT INTO categories (name, parent_id)
SELECT v.name, b.category_id
FROM (VALUES
  ('Brow Gel'),
  ('Brow Pencil'),
  ('Brow Duo Set')
) AS v(name)
CROSS JOIN brows_id b
ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name;

-- Makeup>Lips>Subcategories

WITH
makeup_id AS (
  SELECT category_id
  FROM categories
  WHERE name = 'Makeup' AND parent_id IS NULL
  LIMIT 1
),
lips AS (
  INSERT INTO categories (name, parent_id)
  SELECT 'Lips', category_id FROM makeup_id
  ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name
  RETURNING category_id
),
lips_id AS (
  SELECT category_id FROM lips
  UNION ALL
  SELECT c.category_id
  FROM categories c
  JOIN makeup_id m ON c.parent_id = m.category_id
  WHERE c.name='Lips'
  LIMIT 1
)
INSERT INTO categories (name, parent_id)
SELECT v.name, l.category_id
FROM (VALUES
  ('Lipstick'),
  ('Lip Gloss'),
  ('Lip Balm'),
  ('Lip Pencil')
) AS v(name)
CROSS JOIN lips_id l
ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name;

--Controlling all the categories table values for searching mistakes 

SELECT
  c.category_id,
  c.name AS category_name,
  COALESCE(p.name, 'ROOT') AS parent_name
FROM categories c
LEFT JOIN categories p ON p.category_id = c.parent_id
ORDER BY
  parent_name,
  c.name;

--All done for makeup section , continue with perfumes 

--Perfume > Women Perfume/Men Perfume/Unisex Perfumes/Body Mist

WITH
perfume AS (
  INSERT INTO categories (name, parent_id)
  VALUES ('Perfume', NULL)
  ON CONFLICT (name) WHERE parent_id IS NULL
  DO UPDATE SET name = EXCLUDED.name
  RETURNING category_id
),
perfume_id AS (
  SELECT category_id FROM perfume
  UNION ALL
  SELECT category_id
  FROM categories
  WHERE name='Perfume' AND parent_id IS NULL
  LIMIT 1
)
INSERT INTO categories (name, parent_id)
SELECT v.name, p.category_id
FROM (VALUES
  ('Women Perfume'),
  ('Men Perfume'),
  ('Unisex Perfumes'),
  ('Body Mist')
) AS v(name)
CROSS JOIN perfume_id p
ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name;

--Done with Perfumes section now ı'm on skincares.
--Skin Cares > Cleanser/Moisturizer/Serum/Sun Creams

WITH
skincare AS (
  INSERT INTO categories (name, parent_id)
  VALUES ('Skin Care', NULL)
  ON CONFLICT (name) WHERE parent_id IS NULL
  DO UPDATE SET name = EXCLUDED.name
  RETURNING category_id
),
skincare_id AS (
  SELECT category_id FROM skincare
  UNION ALL
  SELECT category_id
  FROM categories
  WHERE name='Skin Care' AND parent_id IS NULL
  LIMIT 1
)
INSERT INTO categories (name, parent_id)
SELECT v.name, s.category_id
FROM (VALUES
  ('Cleanser'),
  ('Moisturizer'),
  ('Serum'),
  ('Sun Creams')
) AS v(name)
CROSS JOIN skincare_id s
ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name;

--Now ım on Hair Cares section
--Hair Cares > Shampoo/Hair Mask/Oils&Serums/Hair Wax 

WITH
haircare AS (
  INSERT INTO categories (name, parent_id)
  VALUES ('Hair Care', NULL)
  ON CONFLICT (name) WHERE parent_id IS NULL
  DO UPDATE SET name = EXCLUDED.name
  RETURNING category_id
),
haircare_id AS (
  SELECT category_id FROM haircare
  UNION ALL
  SELECT category_id
  FROM categories
  WHERE name='Hair Care' AND parent_id IS NULL
  LIMIT 1
)
INSERT INTO categories (name, parent_id)
SELECT v.name, h.category_id
FROM (VALUES
  ('Shampoo'),
  ('Hair Mask'),
  ('Oils & Serums'),
  ('Hair Wax')
) AS v(name)
CROSS JOIN haircare_id h
ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name;

--Last root category is Special Sets 
--Special Sets > Sets for Gifts/Makeup Sets/Skin Care Sets / Minis & Travel Size 

WITH
specialsets AS (
  INSERT INTO categories (name, parent_id)
  VALUES ('Special Sets', NULL)
  ON CONFLICT (name) WHERE parent_id IS NULL
  DO UPDATE SET name = EXCLUDED.name
  RETURNING category_id
),
specialsets_id AS (
  SELECT category_id FROM specialsets
  UNION ALL
  SELECT category_id
  FROM categories
  WHERE name='Special Sets' AND parent_id IS NULL
  LIMIT 1
)
INSERT INTO categories (name, parent_id)
SELECT v.name, s.category_id
FROM (VALUES
  ('Sets for Gifts'),
  ('Makeup Sets'),
  ('Skin Care Sets'),
  ('Minis & Travel Size')
) AS v(name)
CROSS JOIN specialsets_id s
ON CONFLICT (parent_id, name) DO UPDATE SET name = EXCLUDED.name;

--Now we saw that all 48 categories inside the category table with this search code.

SELECT
  c.category_id,
  c.name AS category_name,
  COALESCE(p.name, 'ROOT') AS parent_name
FROM categories c
LEFT JOIN categories p ON p.category_id = c.parent_id
ORDER BY
  parent_name,
  c.name;

