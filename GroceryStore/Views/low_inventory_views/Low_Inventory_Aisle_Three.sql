USE GroceryStore
GO 
/*
Fresh Produce
Deli
Dairy
fresh_produce_id,fresh_produce_type,fresh_produce_qty
deli_id, deli_type, deli_brand, deli_qty
dairy_id dairy_product_type, dairy_qty.
*/
CREATE VIEW Low_Inventory_Aisle_Three
AS
SELECT 'Fresh Produce' AS fresh_produce_id,fresh_produce_type,fresh_produce_qty
FROM Fresh_Produce
WHERE fresh_produce_qty < 30 
UNION
SELECT 'Deil' AS deli_id, deli_brand, deli_qty
FROM Deli
WHERE deli_qty < 30
UNION
SELECT 'Dairy' AS dairy_id, dairy_product_type, dairy_qty
FROM Dairy
WHERE dairy_qty < 30
;


