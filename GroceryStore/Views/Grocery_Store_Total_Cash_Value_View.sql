USE GroceryStore
GO
/* View that displays the grand cash value total for the grocery store*/
CREATE VIEW Grocery_Store_Total_Cash_Value
AS
SELECT CONCAT('$',SUM(
(A.item_cost)*(A.item_qty)+
(B.item_cost)*(B.item_qty)+
(C.item_cost)*(C.item_qty)+
(D.item_cost)*(D.item_qty)))
AS Grocery_Store_Total_Cash_Value 
FROM Aisle_One_Section AS A, 
Aisle_Two_Section AS B, 
Aisle_Three_Section AS C, 
Aisle_Four_Section AS D;