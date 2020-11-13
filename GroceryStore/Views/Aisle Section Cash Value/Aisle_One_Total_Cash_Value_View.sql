USE GroceryStore
GO
/* View that displays the cash value of aisle one */
CREATE VIEW Aisle_One_Total_Cash_Value
AS
SELECT CONCAT('$',SUM((item_cost)*(item_qty))) 
AS Aisle_One_Total_Cash_Value 
FROM Aisle_One_Section;