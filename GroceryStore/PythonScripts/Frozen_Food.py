#Database Connection import

from DatabaseConnection import *
#Frozen Foods Table

sql_query = pd.read_sql_query('SELECT * FROM GroceryStore.dbo.Frozen_Food ORDER BY frozen_food_cost asc',conn)
print(sql_query)
print(type(sql_query))