/*  PRODUCTS TABLE */
CREATE TABLE products (
    product_id BIGSERIAL PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price >= 0),
    image_url VARCHAR(512),
    description VARCHAR(500),
    featured BOOLEAN NOT NULL DEFAULT FALSE,
    attributes JSONB NOT NULL DEFAULT '{}'::jsonb
);


/*     CATEGORIES TABLE
   - Hierarchical (parent-child)*/
CREATE TABLE categories (
    category_id BIGSERIAL PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    parent_id BIGINT NULL,
    CONSTRAINT fk_category_parent
        FOREIGN KEY (parent_id)
        REFERENCES categories(category_id)
        ON DELETE CASCADE
);


/* PRODUCT ↔ CATEGORY (M:N) */

CREATE TABLE product_categories (
    product_id BIGINT NOT NULL,
    category_id BIGINT NOT NULL,
    CONSTRAINT pk_product_categories
        PRIMARY KEY (product_id, category_id),
    CONSTRAINT fk_pc_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_pc_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
        ON DELETE CASCADE
);

--CATEGORY ATTRİBUTES FOR JSONS

CREATE TABLE IF NOT EXISTS category_attribute_defs (
  category_id BIGINT NOT NULL
    REFERENCES categories(category_id)
    ON DELETE CASCADE,
  attr_key TEXT NOT NULL,
  label_tr TEXT,            -- ekranda özellik ismi yazmak için
  data_type TEXT DEFAULT 'text',  -- text/number/boolean/select vb
  is_required BOOLEAN NOT NULL DEFAULT FALSE,
  sort_order INT NOT NULL DEFAULT 0,
  PRIMARY KEY (category_id, attr_key)
);
