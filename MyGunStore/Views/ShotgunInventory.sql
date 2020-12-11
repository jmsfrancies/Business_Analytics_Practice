USE MyGunStore
GO

CREATE VIEW ShotgunInventory
AS
SELECT *
FROM Firearms
WHERE ChokeType IS NOT NULL;