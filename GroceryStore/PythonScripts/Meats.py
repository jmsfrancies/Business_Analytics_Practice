#Database Connection import

from DatabaseConnection import *
#Meats Table

sql_query = pd.read_sql_query('SELECT * FROM GroceryStore.dbo.Meats ORDER BY meat_cost_per_pound asc',conn)
print(sql_query)
print(type(sql_query))