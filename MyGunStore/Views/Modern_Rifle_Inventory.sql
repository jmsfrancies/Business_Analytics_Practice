USE MyGunStore
GO

CREATE VIEW ModernRifleInventory
AS
SELECT *
FROM Firearms
WHERE FirearmType = 'Rifle';