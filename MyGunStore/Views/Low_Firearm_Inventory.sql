USE MyGunStore
GO

CREATE VIEW LowFirearmInventory
AS
SELECT FirearmID,FirearmBrand,ModelName
FROM Firearms
WHERE FirearmQuantity < 2; 