USE GroceryStore
GO

create Procedure dbo.spAlcohol_GetAll
as
begin
	select * from dbo.Alcohol;
end