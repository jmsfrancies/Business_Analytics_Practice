USE MyGunStore
GO
CREATE VIEW LowKnivesInventory
AS
SELECT KnifeID, KnifeBrand, KnifeModel
FROM Knives
WHERE KnifeQuantity <= 3 OR ((KnifePrice > '40.00')AND(Restrictions != 'N/A'));