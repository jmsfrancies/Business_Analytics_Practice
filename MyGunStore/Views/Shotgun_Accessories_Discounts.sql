USE MyGunStore
GO
/*Shotgun Accessories Discounts Views Created*/
CREATE VIEW ShotgunAccessoriesDiscounts
AS
SELECT
A.AccessoryID,
A.TypeOfAccessory AS  'Name Of Accessory', 
CONCAT('$', A.AccessoryPrice) AS 'Original Price', 
A.DiscountID,
D.DiscountCode,
D.DiscountDescription,
CONCAT('$', CONVERT(DECIMAL(8,2),(A.AccessoryPrice*.89))) AS 'Shotgun Accessory After Discount'  
FROM Accessories A JOIN Discounts D ON
A.DiscountID = D.DiscountID 
WHERE A.DiscountID = '4';