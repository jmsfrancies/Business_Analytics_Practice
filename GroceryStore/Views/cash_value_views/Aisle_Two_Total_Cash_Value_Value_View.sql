USE GroceryStore
GO
/*Calculating the Cash Value of Aisle Two */
CREATE VIEW Aisle_Two_Total_Cash_Value
AS
SELECT CONCAT('$',SUM((item_cost)*(item_qty))) 
AS Aisle_Two_Total_Cash_Value 
FROM Aisle_Two_Section;