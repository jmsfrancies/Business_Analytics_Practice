USE GroceryStore
GO

create Procedure spAisleTwo_GetAll
as
begin
select * from Aisle_Two_Section;
end;