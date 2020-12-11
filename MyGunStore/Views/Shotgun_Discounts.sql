USE MyGunStore
GO
/*Shotgun Discounts View Created*/
CREATE VIEW ShotgunDiscounts
AS
SELECT
F.FirearmID,
F.ModelName,
F.FirearmBrand, 
CONCAT('$', F.FirearmPrice) AS 'Original Price', 
F.DiscountID,
D.DiscountCode,
D.DiscountDescription,
CONCAT('$', CONVERT(DECIMAL(8,2),(FirearmPrice*.89))) AS 'Shotgun After Discount'  
FROM Firearms F JOIN Discounts D ON
F.DiscountID = D.DiscountID 
WHERE F.DiscountID = '4';