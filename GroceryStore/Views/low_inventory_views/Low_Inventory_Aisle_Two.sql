USE GroceryStore
GO 
/*
Frozen Products 
Meats
meats_title, meats_type, meat_brand,meat_pkgd_qty
frozen_food_title, frozen_food_type, frozen_food_brand,frozen_food_qty
*/
CREATE VIEW Low_Inventory_Aisle_Two
AS
SELECT 'Meat Products' AS meats_title, meats_type, meat_brand,meat_pkgd_qty
FROM Meats
WHERE meat_pkgd_qty < 20 
UNION
SELECT 'Frozen Products' AS frozen_food_title, frozen_food_type, frozen_food_brand,frozen_food_qty
FROM Frozen_Food
WHERE frozen_food_qty < 20
;


