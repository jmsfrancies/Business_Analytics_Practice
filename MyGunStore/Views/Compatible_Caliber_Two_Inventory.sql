USE MyGunStore
GO
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

