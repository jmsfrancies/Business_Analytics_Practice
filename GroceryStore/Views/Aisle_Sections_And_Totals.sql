USE GroceryStore
GO
/*Query that displays the aisle section in the first column,
then displays the aisle total in the second column*/
SELECT 'Aisle One' AS Aisle, CONCAT('$',SUM((item_cost)*(item_qty))) 
AS Aisle_Total 
FROM Aisle_One_Section
UNION
SELECT 'Aisle Two' AS Aisle, CONCAT('$',SUM((item_cost)*(item_qty))) 
AS Aisle_Total
FROM Aisle_Two_Section
UNION
SELECT 'Aisle Three' AS Aisle, CONCAT('$',SUM((item_cost)*(item_qty))) 
AS Aisle_Total 
FROM Aisle_Three_Section
UNION
SELECT 'Aisle Four' AS Aisle,CONCAT('$',SUM((item_cost)*(item_qty))) 
AS Aisle_Total 
FROM Aisle_Four_Section
;