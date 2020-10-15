#Database Connection import

from DatabaseConnection import *
#Cleaning Products Table

sql_query = pd.read_sql_query('SELECT * FROM GroceryStore.dbo.Cleaning_Products ORDER BY cleaning_products_cost',conn)
print(sql_query)
print(type(sql_query))