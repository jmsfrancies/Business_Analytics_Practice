USE MyGunStore
GO
/*Black Powder Discounts Views Created*/
CREATE VIEW BlackPowderDiscounts
AS
SELECT 
F.FirearmID,
F.ModelName,
F.FirearmBrand,
CONCAT('$', F.FirearmPrice) AS 'Original Price', 
F.DiscountID,
D.DiscountCode,
D.DiscountDescription,
CONCAT('$', CONVERT(DECIMAL(8,2),(FirearmPrice*.92))) AS 'Black Powder Item After Discount'  
FROM Firearms F JOIN Discounts D ON
F.DiscountID = D.DiscountID 
WHERE F.DiscountID = '3';
