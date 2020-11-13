USE GroceryStore
GO
/* View to calculate the total cash value of Aisle Three */
CREATE VIEW Aisle_Three_Total_Cash_Value
AS
SELECT CONCAT('$',SUM((item_cost)*(item_qty))) 
AS Aisle_Three_Total_Cash_Value 
FROM Aisle_Three_Section;