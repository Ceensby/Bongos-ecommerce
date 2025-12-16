-- Im making the category atrributes table json questions 

--JSON ATTRİBUTES

--Makeup 
--FACE

--Foundation

INSERT INTO category_attribute_defs (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (3, 'skin_type', NULL, 'text',   TRUE, 1),
  (3, 'coverage',  NULL, 'text',   TRUE, 2),
  (3, 'volume_ml', NULL, 'number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET data_type   = EXCLUDED.data_type,
    is_required = EXCLUDED.is_required,
    sort_order  = EXCLUDED.sort_order;

--Concealer 

INSERT INTO category_attribute_defs (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (4, 'skin_type', NULL, 'text',   TRUE, 1),
  (4, 'coverage',  NULL, 'text',   TRUE, 2),
  (4, 'volume_ml', NULL, 'number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET data_type   = EXCLUDED.data_type,
    is_required = EXCLUDED.is_required,
    sort_order  = EXCLUDED.sort_order;

SELECT category_id, attr_key, data_type, is_required, sort_order
FROM category_attribute_defs
WHERE category_id = 4
ORDER BY sort_order;

--Makeup Base 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (5, 'skin_type',  'Skin Type',  'text',   TRUE, 1),
  (5, 'volume_ml',  'Volume (ml)', 'number', TRUE, 2),
  (5, 'finish',     'Finish',     'text',   TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--Baking Powder 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (6, 'powder_type', 'Powder Type', 'text',   TRUE, 1),
  (6, 'finish',      'Finish',      'text',   TRUE, 2),
  (6, 'weight_g',    'Weight (g)',  'number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--Contour 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (7, 'skin_type', 'Skin Type', 'text',   TRUE, 1),
  (7, 'form',      'Form',      'text',   TRUE, 2),
  (7, 'weight_g',  'Weight (g)','number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--EYES 
--Eyeshadow 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (10, 'skin_type',    'Skin Type',    'text',   TRUE, 1),
  (10, 'palette_type', 'Palette Type', 'text',   TRUE, 2),
  (10, 'weight_g',     'Weight (g)',   'number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--Eyeliner 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (11, 'skin_type',  'Skin Type',  'text',    TRUE, 1),
  (11, 'form',       'Form',       'text',    TRUE, 2),
  (11, 'waterproof', 'Waterproof', 'boolean', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--Mascara

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (12, 'effect',      'Effect',      'text',    TRUE, 1),
  (12, 'brush_type',  'Brush Type',  'text',    TRUE, 2),
  (12, 'waterproof',  'Waterproof',  'boolean', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--Lashes 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (13, 'length',        'Length',        'number',  TRUE, 1),
  (13, 'volume_level',  'Volume Level',  'text',    TRUE, 2),
  (13, 'reusable',      'Reusable',      'boolean', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;


--CHEEKS 
--Blush

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (17, 'form',      'Form',      'text', TRUE, 1),
  (17, 'finish',    'Finish',    'text', TRUE, 2),
  (17, 'intensity', 'Intensity', 'text', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--Highlighter 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (18, 'finish',        'Finish',        'text', TRUE, 1),
  (18, 'shimmer_level', 'Shimmer Level', 'text', TRUE, 2),
  (18, 'form',          'Form',          'text', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--Bronzer

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (19, 'form',      'Form',      'text', TRUE, 1),
  (19, 'finish',    'Finish',    'text', TRUE, 2),
  (19, 'intensity', 'Intensity', 'text', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;


--BROWS
--Brow Gel
INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (21, 'brow_type',  'Brow Type',  'text',   TRUE, 1),
  (21, 'hold_level', 'Hold Level', 'text',   TRUE, 2),
  (21, 'volume',     'Volume',     'number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--Brow Pencil

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (22, 'brow_type',  'Brow Type',  'text',    TRUE, 1),
  (22, 'intensity',  'Intensity',  'text',    TRUE, 2),
  (22, 'waterproof', 'Waterproof', 'boolean', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

  --Brow Duo Set

 INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (23, 'brow_type',  'Brow Type',  'text',    TRUE, 1),
  (23, 'waterproof', 'Waterproof', 'boolean', TRUE, 2),
  (23, 'set_items',  'Set Items',  'text',    TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;
 

--LİPS

--Lipstick 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (25, 'color',     'Color',     'text',   TRUE, 1),
  (25, 'texture',   'Texture',   'text',   TRUE, 2),
  (25, 'weight_g',  'Weight (g)','number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--Lip Gloss 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (26, 'shine_level', 'Shine Level', 'text',   TRUE, 1),
  (26, 'texture',     'Texture',     'text',   TRUE, 2),
  (26, 'volume_ml',   'Volume (ml)', 'number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--Lip Balm 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (27, 'benefits', 'Benefits', 'text',   TRUE, 1),
  (27, 'flavor',   'Flavor',   'text',   TRUE, 2),
  (27, 'weight_g', 'Weight (g)','number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--Lip Pencil 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (28, 'intensity',  'Intensity',  'text',    TRUE, 1),
  (28, 'color',      'Color',      'text',    TRUE, 2),
  (28, 'waterproof', 'Waterproof', 'boolean', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET
  label_tr    = EXCLUDED.label_tr,
  data_type   = EXCLUDED.data_type,
  is_required = EXCLUDED.is_required,
  sort_order  = EXCLUDED.sort_order;

--ENDS OF MAKEUP SİDE 

--PERFUME 
--Women Perfume 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (30, 'gender',    'Gender',    'text', TRUE, 1),
  (30, 'top_notes', 'Top Notes', 'text', TRUE, 2),
  (30, 'season',    'Season',    'text', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr,
    data_type=EXCLUDED.data_type, 
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;

--Men Perfume

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (31, 'gender',    'Gender',    'text', TRUE, 1),
  (31, 'top_notes', 'Top Notes', 'text', TRUE, 2),
  (31, 'season',    'Season',    'text', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr,
    data_type=EXCLUDED.data_type,
    is_required=EXCLUDED.is_required,
    sort_order=EXCLUDED.sort_order;

--Unisex Perfumes 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (32, 'gender',    'Gender',    'text', TRUE, 1),
  (32, 'top_notes', 'Top Notes', 'text', TRUE, 2),
  (32, 'season',    'Season',    'text', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr,
    data_type=EXCLUDED.data_type,
    is_required=EXCLUDED.is_required,
    sort_order=EXCLUDED.sort_order;

--Body Mist 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (33, 'gender',    'Gender',    'text', TRUE, 1),
  (33, 'top_notes', 'Top Notes', 'text', TRUE, 2),
  (33, 'season',    'Season',    'text', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr, 
    data_type=EXCLUDED.data_type, 
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;

--SKİN CARES
--Cleanser 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (35, 'skin_type',  'Skin Type',   'text',   TRUE, 1),
  (35, 'fragrance',  'Fragrance',   'text',   TRUE, 2),
  (35, 'volume_ml',  'Volume (ml)', 'number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr,
    data_type=EXCLUDED.data_type,
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;

--Moisturizer

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (36, 'skin_type',       'Skin Type',        'text', TRUE, 1),
  (36, 'key_ingredients', 'Key Ingredients',  'text', TRUE, 2),
  (36, 'usage_time',      'Usage Time',       'text', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr, 
    data_type=EXCLUDED.data_type, 
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;


--Serum 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (37, 'skin_type',          'Skin Type',         'text',   TRUE, 1),
  (37, 'active_ingredients', 'Active Ingredients','text',   TRUE, 2),
  (37, 'volume_ml',          'Volume (ml)',       'number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr,
    data_type=EXCLUDED.data_type,
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;


--Sun Creams

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (38, 'skin_type',  'Skin Type',   'text',   TRUE, 1),
  (38, 'spf',        'SPF',         'number', TRUE, 2),
  (38, 'volume_ml',  'Volume (ml)', 'number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr, 
    data_type=EXCLUDED.data_type, 
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;

SELECT
  c.name AS category_name,
  cad.attr_key,
  cad.label_tr,
  cad.data_type,
  cad.sort_order
FROM category_attribute_defs cad
JOIN categories c ON c.category_id = cad.category_id
WHERE cad.category_id IN (35, 36, 37, 38)
ORDER BY c.name, cad.sort_order;


--HAİR CARES 
--Shampoo

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (40, 'hair_type',     'Hair Type',      'text',    TRUE, 1),
  (40, 'silicone_free', 'Silicone Free',  'boolean', TRUE, 2),
  (40, 'volume_ml',     'Volume (ml)',    'number',  TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr,
    data_type=EXCLUDED.data_type,
    is_required=EXCLUDED.is_required,
    sort_order=EXCLUDED.sort_order;


--Hair Mask

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (41, 'hair_type',      'Hair Type',       'text',    TRUE, 1),
  (41, 'curl_friendly',  'Curl Friendly',   'boolean', TRUE, 2),
  (41, 'volume_ml',      'Volume (ml)',     'number',  TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr, 
    data_type=EXCLUDED.data_type, 
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;


--Oils & Serums 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (42, 'hair_type',          'Hair Type',          'text',   TRUE, 1),
  (42, 'active_ingredients', 'Active Ingredients', 'text',   TRUE, 2),
  (42, 'volume_ml',          'Volume (ml)',        'number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr,
    data_type=EXCLUDED.data_type, 
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;


--Hair wax 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (43, 'hair_type',   'Hair Type',   'text',    TRUE, 1),
  (43, 'hold_level',  'Hold Level',  'number',  TRUE, 2),
  (43, 'washable',    'Washable',    'boolean', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr, 
    data_type=EXCLUDED.data_type, 
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;


SELECT
  c.name AS category_name,
  cad.attr_key,
  cad.label_tr,
  cad.data_type,
  cad.sort_order
FROM category_attribute_defs cad
JOIN categories c ON c.category_id = cad.category_id
WHERE cad.category_id IN (40, 41, 42, 43)
ORDER BY c.name, cad.sort_order;

--SPECİAL SETS 
--Sets for Gifts 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (45, 'age_group',    'Age Group',    'text',   TRUE, 1),
  (45, 'gender',       'Gender',       'text',   TRUE, 2),
  (45, 'product_count','Product Count','number', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr,
    data_type=EXCLUDED.data_type,
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;

--Makeup Sets 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (46, 'product_count', 'Product Count', 'number', TRUE, 1),
  (46, 'kit_type',      'Kit Type',      'text',   TRUE, 2),
  (46, 'coverage',      'Coverage',      'text',   TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr, 
    data_type=EXCLUDED.data_type, 
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;

--Skin Care Sets 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (47, 'skin_type',     'Skin Type',     'text',   TRUE, 1),
  (47, 'product_count', 'Product Count', 'number', TRUE, 2),
  (47, 'usage_time',    'Usage Time',    'text',   TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr, 
    data_type=EXCLUDED.data_type, 
    is_required=EXCLUDED.is_required, 
    sort_order=EXCLUDED.sort_order;

--Minis & Travel Size 

INSERT INTO category_attribute_defs
  (category_id, attr_key, label_tr, data_type, is_required, sort_order)
VALUES
  (48, 'product_count',   'Product Count',   'number',  TRUE, 1),
  (48, 'mini',            'Mini',            'boolean', TRUE, 2),
  (48, 'limited_edition', 'Limited Edition', 'boolean', TRUE, 3)
ON CONFLICT (category_id, attr_key) DO UPDATE
SET label_tr=EXCLUDED.label_tr, 
    data_type=EXCLUDED.data_type, 
   is_required=EXCLUDED.is_required, 
   sort_order=EXCLUDED.sort_order;

--Controlling all the categories for correction.

SELECT
  c.category_id,
  c.name AS category_name,
  COALESCE(p.name, 'ROOT') AS parent_name,
  COALESCE(
    string_agg(cad.attr_key, ', ' ORDER BY cad.sort_order),
    '(no json)'
  ) AS json_keys
FROM categories c
LEFT JOIN categories p ON p.category_id = c.parent_id
LEFT JOIN category_attribute_defs cad ON cad.category_id = c.category_id
GROUP BY c.category_id, c.name, p.name
ORDER BY parent_name, c.name;