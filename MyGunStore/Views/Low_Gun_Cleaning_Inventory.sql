USE MyGunStore
GO

/*Gun Cleaing Inventory View Created*/
CREATE VIEW LowGunCleaningInventory
AS
SELECT CleaningID, CleaningBrand,TypeOfCleaner 
FROM GunCleaning
WHERE (QuantityOfCleaner > 8) OR 
((TypeOfCleaner = 'Gun Lubricant')AND(TypeOfCleaner = 'Cleaning Patches'));