use GroceryStore
GO

create Procedure spAisleThree_GetAll
as
begin
select * from dbo.Aisle_Three_Section;
end