USE GroceryStore
GO
/*
Aisle Three Section's products
 */
CREATE VIEW Aisle_Three_Section
AS
SELECT 'Fresh Produce' AS item_type, 
fresh_produce_type AS item_name,
fresh_produce_cost_per_pound AS item_cost,
fresh_produce_qty AS item_qty,
aisle_section 
FROM Fresh_Produce
UNION
SELECT 'Deli' AS item_type, 
deli_type AS item_name,
deli_cost_per_lb AS item_cost,
deli_qty AS item_qty,
aisle_section 
FROM Deli
UNION
SELECT 'Dairy' AS item_type, 
dairy_product_type AS item_name,
dairy_cost AS item_cost,
dairy_qty AS item_qty,
aisle_section 
FROM Dairy;