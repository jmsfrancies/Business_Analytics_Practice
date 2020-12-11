USE MyGunStore
GO

/*Ammo Inventory View Created*/
CREATE VIEW LowAmmoInventory
AS
SELECT CaliberID,NameOfCaliber,BrandOfCaliber,PerBox
FROM Ammo
WHERE AmmoQuantity < 5 AND PerBox < 100;