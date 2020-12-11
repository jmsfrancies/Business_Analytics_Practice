/*Create Views*/
USE MyGunStore
GO
/*Shotgun View*/
/*
CREATE VIEW ShotgunInventory
AS
SELECT *
FROM Firearms
WHERE ChokeType IS NOT NULL;


/*Cartridge Rifle View*/


CREATE VIEW ModernRifleInventory
AS
SELECT *
FROM Firearms
WHERE FirearmType = 'Rifle';


/*Black Powder View*/


CREATE VIEW BlackPowderFirearms
AS
SELECT * 
FROM Firearms
WHERE FirearmType  = 'Black Powder';


/*Need to Order more Firearms View*/


CREATE VIEW LowFirearmInventory
AS
SELECT FirearmID,FirearmBrand,ModelName
FROM Firearms
WHERE FirearmQuantity < 2; 



/*What Accessories Are Needed View*/


CREATE VIEW LowAccessoriesInventory
AS
SELECT AccessoryID,TypeOfAccessory,AccessoryBrand 
FROM Accessories
WHERE ((Quantity < 2) AND (AccessoryPrice > '1200.00'))
OR (((AccessoryPrice < '30.00') AND ((Quantity > 5) AND (Quantity < 20))));


/*Knife Inventory View Created*/


CREATE VIEW LowKnivesInventory
AS
SELECT KnifeID, KnifeBrand, KnifeModel
FROM Knives
WHERE KnifeQuantity <= 3 OR ((KnifePrice > '40.00')AND(Restrictions != 'N/A'));


/*Ammo Inventory View Created*/


CREATE VIEW LowAmmoInventory
AS
SELECT CaliberID,NameOfCaliber,BrandOfCaliber,PerBox
FROM Ammo
WHERE AmmoQuantity < 5 AND PerBox < 100;


/*Gun Cleaing Inventory View Created*/


CREATE VIEW LowGunCleaningInventory
AS
SELECT CleaningID, CleaningBrand,TypeOfCleaner 
FROM GunCleaning
WHERE (QuantityOfCleaner > 8) OR 
((TypeOfCleaner = 'Gun Lubricant')AND(TypeOfCleaner = 'Cleaning Patches'));


/*Reloading Inventory View Created*/


CREATE VIEW LowReloadingInventory
AS
SELECT ReloadingID,BrandOfReloader,TypeOfMaterial 
FROM Reloading
WHERE ToolQuantity < 2;


/*List of any given Firearm with a Compatbile Ammo in the Database can be looked up */


CREATE VIEW NeedingCompatibleAmmo
AS
SELECT F.FirearmID,
F.ModelName,
F.FirearmBrand,
F.Caliber AS 'Firearm Caliber',
C.CompatibleCaliber1 AS '1st Option',
C.CompatibleCaliber2 AS '2nd Option'
FROM Firearms F JOIN CompatibleAmmo C 
ON F.Caliber = C.FirearmCaliber
GROUP BY F.FirearmID,F.ModelName,F.FirearmBrand,F.Caliber,
C.CompatibleCaliber1,C.CompatibleCaliber2
HAVING F.FirearmBrand != '';


/*Inventory for Compatible Caliber One View Created*/


CREATE VIEW CompatibleCaliberOneInventory
AS
SELECT
C.CompatibleCaliber1 AS '1st Option',
A.PerBox AS 'Total Per Box',
A.AmmoQuantity AS 'Boxes Left',
A.AmmoPrice AS 'Cost'
FROM CompatibleAmmo C JOIN Ammo A
ON C.CompatibleCaliber1 = A.NameOfCaliber
GROUP BY C.CompatibleCaliber1,A.AmmoPrice,A.PerBox,A.AmmoQuantity
HAVING ((C.CompatibleCaliber1 != '')AND(A.AmmoQuantity > 1));


/*Inventory For Compatible Caliber Two Inventory Created*/


CREATE VIEW CompatibleCaliberTwoInventory
AS
SELECT
C.CompatibleCaliber2 AS '2nd Option',
A.PerBox AS 'Total Per Box',
A.AmmoQuantity AS 'Boxes Left',
A.AmmoPrice AS 'Cost'
FROM CompatibleAmmo C JOIN Ammo A
ON C.CompatibleCaliber2 = A.NameOfCaliber
GROUP BY C.CompatibleCaliber2,A.AmmoPrice,A.PerBox,A.AmmoQuantity
HAVING ((C.CompatibleCaliber2 != '')AND(A.AmmoQuantity > 1));


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


/*Shotgun Accessories Discounts Views Created*/

*/
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
