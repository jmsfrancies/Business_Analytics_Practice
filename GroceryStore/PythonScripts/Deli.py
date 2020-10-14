#Database Connection import

from DatabaseConnection import *
# Deli Table

sql_query = pd.read_sql_query('SELECT * FROM GroceryStore.dbo.Deli ORDER BY deli_cost_per_lb asc',conn)
print(sql_query)
print(type(sql_query))