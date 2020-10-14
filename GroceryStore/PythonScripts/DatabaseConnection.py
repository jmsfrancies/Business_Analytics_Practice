# Database connection file that all other files inheret their 
# database connection and pandas data format properities from.
import pyodbc
import pandas as pd 
conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=DESKTOP-ESGP28K;'
                      'Database=master;'
                      'Trusted_Connection=yes;')

cursor = conn.cursor()