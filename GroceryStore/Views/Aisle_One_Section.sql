USE GroceryStore
GO
/*
Aisle One Section's products
 */
CREATE VIEW Aisle_One_Section
AS
SELECT 'Alcohol' AS item_type, 
alcohol_name AS item_name, 
alcohol_brand AS item_brand,
alcohol_cost AS item_cost,
alcohol_quantity AS item_qty,
aisle_section 
FROM Alcohol
UNION
SELECT 'Dried Goods' AS item_type, 
dried_goods_title AS item_name,
dried_goods_brand AS item_brand,
dried_goods_cost AS item_cost,
dried_goods_qty AS item_cost,
aisle_section 
FROM Dried_Goods;