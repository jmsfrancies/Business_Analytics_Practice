USE GroceryStore
GO
create Procedure spAisleFour_GetAll
as
begin
select * from dbo.Aisle_Four_Section;
end
