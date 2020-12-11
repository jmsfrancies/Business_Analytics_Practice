USE MyGunStore
GO
/*Discounts For Black Powder Accessories Created*/
CREATE VIEW BlackPowderAccessoriesDiscounts
AS
SELECT
R.ReloadingID,
R.BrandOfReloader,
R.TypeOfMaterial,
R.PurposeOfMaterial, 
CONCAT('$', R.ToolPrice) AS 'Original Price', 
R.DiscountID,
D.DiscountCode,
D.DiscountDescription,
CONCAT('$', CONVERT(DECIMAL(8,2),(ToolPrice*.92))) AS 'Black Powder Item After Discount'  
FROM Reloading R JOIN Discounts D ON
R.DiscountID = D.DiscountID 
WHERE R.DiscountID = '3';