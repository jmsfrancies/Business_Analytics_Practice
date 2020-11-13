USE GroceryStore
GO 

/*alcohol name, alcohol brand,alcohol cost, alcohol quantity
dried goods title,dried goods brand, dried goods cost,dried goods qty*/
CREATE VIEW Low_Inventory_Aisle_One
AS
SELECT 'Alcohol Section' AS alcohol, alcohol_name,alcohol_brand,alcohol_cost,alcohol_quantity 
FROM Alcohol 
WHERE alcohol_quantity < 12 
UNION
SELECT 'Dried Goods' AS Dried_Goods, dried_goods_title,dried_goods_brand,dried_goods_cost,dried_goods_qty 
FROM Dried_Goods
WHERE dried_goods_qty < 12
;