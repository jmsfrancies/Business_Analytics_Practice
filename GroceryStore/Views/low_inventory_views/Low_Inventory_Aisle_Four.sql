USE GroceryStore
GO 
/*
Frozen Products 
Meats
meats_title, meats_type, meat_brand,meat_pkgd_qty
frozen_food_title, frozen_food_type, frozen_food_brand,frozen_food_qty
*/
CREATE VIEW Low_Inventory_Aisle_Four
AS
SELECT * FROM dbo.Aisle_Four_Section
WHERE item_qty > 15
;