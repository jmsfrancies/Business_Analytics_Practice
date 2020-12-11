/*Update File*/
USE MyGunStore
GO

UPDATE Ammo
SET NameOfCaliber = '7.62x51mm'
WHERE NameOfCaliber = '7.62x51';

UPDATE Firearms
SET DiscountID = '1'
WHERE FirearmType = 'Rifle';


UPDATE Firearms
SET DiscountID = '2'
WHERE FirearmType = 'Revolver';


UPDATE Firearms
SET DiscountID = '2'
WHERE FirearmType = 'Handgun';


UPDATE Firearms
SET DiscountID = '3'
WHERE FirearmType = 'Black Powder';


UPDATE Firearms
SET DiscountID = '4'
WHERE FirearmType = 'Shotgun';


UPDATE Ammo
SET DiscountID = '6'
WHERE AmmoQuantity <= '100';


UPDATE Ammo
SET DiscountID = '7'
WHERE AmmoQuantity > '499';


UPDATE Reloading
SET DiscountID = '3'
WHERE IntendedFirearm = 'Black Powder';


UPDATE Knives
SET DiscountID = '5'
WHERE Restrictions = 'N/A';


UPDATE Knives
SET DiscountID  = '9'
WHERE Restrictions = 'LEO Only';


UPDATE Accessories
SET DiscountID = '8'
WHERE TypeOfAccessory LIKE '%Holster';


UPDATE Accessories
SET DiscountID = '8'
WHERE TypeOfAccessory LIKE '%Carrying Case';


UPDATE Firearms
SET DiscountID = '2'
WHERE ModelName = 'M&P EZ';


UPDATE Accessories
SET DiscountID  = '4'
WHERE TypeOfAccessory LIKE '%Choke%';