USE GroceryStore
GO
/* View that displays the cash value of aisle two */
CREATE VIEW Aisle_Two_Total_Cash_Value
AS
SELECT CONCAT('$',SUM((item_cost)*(item_qty))) 
AS Aisle_Two_Total_Cash_Value 
FROM Aisle_Two_Section;