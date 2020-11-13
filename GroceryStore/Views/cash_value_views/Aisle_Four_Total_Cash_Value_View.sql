USE GroceryStore
GO
/*
Aisle Four Total Cash Value
*/
CREATE VIEW Aisle_Four_Total_Cash_Value
AS
SELECT CONCAT('$',SUM((item_cost)*(item_qty))) 
AS Aisle_Four_Total_Cash_Value 
FROM Aisle_Four_Section;