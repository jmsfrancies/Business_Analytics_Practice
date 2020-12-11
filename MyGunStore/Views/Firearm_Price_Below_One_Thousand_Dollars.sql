USE MyGunStore
GO

CREATE VIEW FirearmPriceBelowOneThousandDollars
AS
SELECT 
FirearmBrand, CONCAT('$', FirearmPrice) as FirearmPrice FROM Firearms
WHERE FirearmPrice <= 1000;