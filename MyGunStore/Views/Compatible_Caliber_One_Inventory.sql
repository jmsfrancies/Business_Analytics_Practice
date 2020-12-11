USE MyGunStore
GO

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