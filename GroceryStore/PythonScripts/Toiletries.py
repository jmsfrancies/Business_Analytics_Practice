#Database Connection import

from DatabaseConnection import *
#Toiletries Table

sql_query = pd.read_sql_query('SELECT * FROM GroceryStore.dbo.Toiletries ORDER BY toiletries_cost asc',conn)
print(sql_query)
print(type(sql_query))