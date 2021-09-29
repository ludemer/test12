import pyodbc
server = 'abi-las-brs-dev-beesuy-sql.database.windows.net'
database = 'abi-las-brs-dev-beesuy-sql'
username = 'admindb'
password = '{X8*cx3hkfkyS/EmP}'
driver= '{ODBC Driver 17 for SQL Server}'

with pyodbc.connect('DRIVER='+driver+';SERVER=tcp:'+server+';PORT=1433;DATABASE='+database+';UID='+username+';PWD='+ password) as conn:
    with conn.cursor() as cursor:
        cursor.execute("SELECT TOP (100) * FROM [dbo].[b2blog]")
        row = cursor.fetchone()
        while row:
            print (str(row[0]) + " " + str(row[1]))
            row = cursor.fetchone()
