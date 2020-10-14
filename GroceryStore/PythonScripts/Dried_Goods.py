#Database Connection import

from DatabaseConnection import *
#Dried Goods Table

sql_query = pd.read_sql_query('SELECT * FROM GroceryStore.dbo.Dried_Goods ORDER BY dried_goods_cost asc',conn)
print(sql_query)
print(type(sql_query))