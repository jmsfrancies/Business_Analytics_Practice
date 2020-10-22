USE GroceryStore
GO
/*
Cleaning Products 4a
cleaning_products_title AS item_name,
cleaning_products_brand AS item_brand,
cleaning_products_cost AS item_cost,
cleaning_products_qty AS item_qty, 
aisle_section
Toiletries 4b
toiletries_title AS item_name,
toiletries_brand AS item_brand,
tolietries_cost AS item_cost,
tolietries_qty AS item_qty,
aisle_section
Cooking Utensils 4c
cooking_utensils_title AS item_name,
cooking_utensils_brand AS item_brand,
cooking_utensils_cost AS item_cost,
cooking_utensils_qty AS item_qty,
aisle_section
*/
CREATE VIEW Aisle_Four_Section
AS
SELECT 'Cleaning Products' AS item_type,
cleaning_products_title AS item_name,
cleaning_products_brand AS item_brand,
cleaning_products_cost AS item_cost,
cleaning_products_qty AS item_qty, 
aisle_section
FROM Cleaning_Products
UNION
SELECT 'Toiletries' AS item_type,
toiletries_title AS item_name,
toiletries_brand AS item_brand,
toiletries_cost AS item_cost,
toiletries_qty AS item_qty,
aisle_section
FROM Toiletries
UNION
SELECT 'Cooking Utensils' AS item_type,
cooking_utensils_title AS item_name,
cooking_utensils_brand AS item_brand,
cooking_utensils_cost AS item_cost,
cooking_utensils_qty AS item_qty,
aisle_section
FROM Cooking_Utensils;
