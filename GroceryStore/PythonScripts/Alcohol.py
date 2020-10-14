#Database Connection import

from DatabaseConnection import *
#Alcohol Table

sql_query = pd.read_sql_query('SELECT * FROM GroceryStore.dbo.Alcohol ORDER BY alcohol_cost asc',conn)
print(sql_query)
print(type(sql_query))