USE MyGunStore
GO

CREATE VIEW AscendingFirearmPrice
AS
SELECT 
FirearmBrand, CONCAT('$', FirearmPrice) as FirearmPrice FROM Firearms
WHERE FirearmPrice <= 1000;