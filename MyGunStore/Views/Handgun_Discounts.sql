USE MyGunStore
GO
/*Handgun Discounts Views Created*/
CREATE VIEW HandgunDiscounts
AS
SELECT 
F.FirearmID,
F.ModelName,
F.FirearmBrand,
CONCAT('$', F.FirearmPrice) AS 'Original Price', 
F.DiscountID,
D.DiscountCode,
D.DiscountDescription,
CONCAT('$', CONVERT(DECIMAL(8,2),(FirearmPrice*.95))) AS 'Handgun After Discount'  
FROM Firearms F JOIN Discounts D ON
F.DiscountID = D.DiscountID 
WHERE F.DiscountID = '2';
