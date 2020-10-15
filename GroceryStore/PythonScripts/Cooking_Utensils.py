#Database Connection import

from DatabaseConnection import *
#Cooking Utensils Table

sql_query = pd.read_sql_query('SELECT * FROM GroceryStore.dbo.Cooking_Utensils ORDER BY cooking_utensils_cost asc',conn)
print(sql_query)
print(type(sql_query))