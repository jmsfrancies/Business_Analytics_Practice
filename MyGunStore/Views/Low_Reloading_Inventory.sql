USE MyGunStore
GO

/*Reloading Inventory View Created*/
CREATE VIEW LowReloadingInventory
AS
SELECT ReloadingID,BrandOfReloader,TypeOfMaterial 
FROM Reloading
WHERE ToolQuantity < 2;