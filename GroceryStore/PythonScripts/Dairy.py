#Database Connection import

from DatabaseConnection import *
# Dairy Table

sql_query = pd.read_sql_query('SELECT * FROM GroceryStore.dbo.Dairy ORDER BY dairy_cost asc',conn)
print(sql_query)
print(type(sql_query))