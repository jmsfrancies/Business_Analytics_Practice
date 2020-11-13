USE GroceryStore
GO
/*
Aisle Two Section's products
 */
 CREATE VIEW Aisle_Two_Section
 AS
SELECT 'Frozen Products' AS item_type,
frozen_food_title AS item_name,
frozen_food_brand AS item_brand,
frozen_food_cost AS item_cost,
frozen_food_qty AS item_qty,
aisle_section
FROM Frozen_Food
UNION
SELECT 'Meats' AS item_type,
meats_title AS item_name,
meat_brand AS item_brand,
meat_cost_per_pound AS item_cost,
meat_pkgd_qty AS item_qty,
aisle_section
FROM Meats;