USE MyGunStore
GO

CREATE VIEW LowAccessoriesInventory
AS
SELECT AccessoryID,TypeOfAccessory,AccessoryBrand 
FROM Accessories
WHERE ((Quantity < 2) AND (AccessoryPrice > '1200.00'))
OR (((AccessoryPrice < '30.00') AND ((Quantity > 5) AND (Quantity < 20))));