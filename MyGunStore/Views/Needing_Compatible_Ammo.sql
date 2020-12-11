USE MyGunStore
GO

/*List of any given Firearm with a 
Compatbile Ammo in the Database can be looked up */
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