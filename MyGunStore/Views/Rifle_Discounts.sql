USE MyGunStore
GO

/*Rifle Discounts View Created*/
CREATE VIEW RifleDiscounts
AS
SELECT 
F.FirearmID,
F.ModelName,
F.FirearmBrand,
CONCAT('$', F.FirearmPrice) AS 'Original Price', 
F.DiscountID,
D.DiscountCode,
D.DiscountDescription,
CONCAT('$', CONVERT(DECIMAL(8,2),(FirearmPrice*.90))) AS 'Rifle After Discount'  
FROM Firearms F JOIN Discounts D ON
F.DiscountID = D.DiscountID 
WHERE F.DiscountID = '1';