import mysql.connector

# Establish a connection to the database
db = mysql.connector.connect(
  host="172.17.0.2",
  user="root",
  passwd="root",
  database="bike_shop"
)
# Create a cursor object
cursor = db.cursor()


query = "UPDATE bikes SET price = %s WHERE bike_id = %s"
val = (700.00, 8)

# Execute the query
cursor.execute(query,val)

# Confirmar los cambios 
db.commit()

print(cursor.rowcount,"Updated data")

# Close the database connection
db.close()