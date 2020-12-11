USE MyGunStore
GO

CREATE VIEW BlackPowderFirearms
AS
SELECT * 
FROM Firearms
WHERE FirearmType  = 'Black Powder';