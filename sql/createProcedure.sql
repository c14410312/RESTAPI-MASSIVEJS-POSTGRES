DROP FUNCTION IF EXISTS get_product_by_name(x VARCHAR(50));
CREATE OR REPLACE FUNCTION get_product_by_name(x VARCHAR(50))
RETURNS SETOF products AS $$

SELECT * from products WHERE title LIKE(x);

$$ LANGUAGE sql;
