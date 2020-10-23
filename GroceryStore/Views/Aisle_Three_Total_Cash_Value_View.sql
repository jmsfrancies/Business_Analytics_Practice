USE GroceryStore
GO
/* View that displays the cash value of aisle three */
CREATE VIEW Aisle_Three_Total_Cash_Value
AS
SELECT CONCAT('$',SUM((item_cost)*(item_qty))) 
AS Aisle_Three_Total_Cash_Value 
FROM Aisle_Three_Section;