
--WomenPerfumes

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  30,
  'Carolina Herrera Good Girl Blush Eau de Parfum',
  8654.00,
  '/ProductsImages/Perfume/WomenPerfume/carolina-herrera-good-girl-blush-edp-80ml.jpg',
  'Carolina Herrera Good Girl Blush Eau de Parfum is a radiant and feminine fragrance that blends fresh citrus notes with elegant florals and creamy vanilla. Soft yet confident, this scent celebrates modern femininity with a delicate and sensual character. Size: 80 ml.',
  false,
  '{
    "gender": "Women",
    "top_notes": "Bergamot, Ylang Ylang",
    "season": "Spring/Summer"
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--MenPerfume

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  31,
  'Prada Paradigme Eau de Parfum',
  5300.00,
  '/ProductsImages/Perfume/MenPerfume/prada-paradigme-eau-de-parfum-50ml.jpg',
  'Prada Paradigme Eau de Parfum is a modern masculine fragrance that redefines elegance through contrast. Fresh aromatic notes blend with warm woods and amber nuances, creating a refined and contemporary scent designed for confident men. Size: 50 ml.',
  false,
  '{
    "gender": "Men",
    "top_notes": "Bergamot, Aromatic Notes",
    "season": "All Seasons"
  }'::jsonb
)
RETURNING product_id, category_id, name, price, attributes;

--UnisexPerfumes 

INSERT INTO products (category_id,name, price, image_url, description, featured, attributes)
VALUES (
  32,
  'Chanel Bleu de Chanel Eau de Parfum',
  8850.00,
  '/ProductsImages/Perfume/UnisexPerfumes/chanel-bleu-de-chanel-edp-100ml.jpg',
  'Bleu de Chanel Eau de Parfum is a sophisticated aromatic-woody fragrance suitable for all genders. Fresh citrus notes blend with incense and deep woods, creating a timeless, elegant and powerful scent. Size: 100 ml.',
  true,
  '{
    "gender": "Unisex",
    "top_notes": "Citrus, Grapefruit",
    "season": "All Seasons"
  }'::jsonb
)
RETURNING product_id;

--BodyMist

INSERT INTO products (category_id, name, price, image_url, description, featured, attributes)
VALUES (
  33,
  'Sol de Janeiro Rio Radiance Perfume Mist',
  1979.00,
  '/ProductsImages/Perfume/BodyMist/sol-de-janeiro-rio-radiance-90ml.jpg',
  'Sol de Janeiro Rio Radiance Perfume Mist is a luminous body mist inspired by sun-drenched beaches. With notes of white florals and creamy coconut milk, it delivers a fresh, radiant scent perfect for warm days. Size: 90 ml.',
  false,
  '{
    "gender": "Unisex",
    "top_notes": "White Florals, Coconut Milk",
    "season": "Summer"
  }'::jsonb
)
RETURNING product_id, name;


