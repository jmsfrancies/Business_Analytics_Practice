#Database Connection import

from DatabaseConnection import *
# Fresh Produce Table

sql_query = pd.read_sql_query('SELECT * FROM GroceryStore.dbo.Fresh_Produce ORDER BY fresh_produce_cost_per_pound asc',conn)
print(sql_query)
print(type(sql_query))