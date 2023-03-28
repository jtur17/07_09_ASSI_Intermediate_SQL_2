import mysql.connector

# Establish a connection to the database
# db = mysql.connector.connect(
#   host="172.17.0.2",
#   user="root",
#   passwd="root",
#   database="bikes"
# )

db_host = 'db'
db_port = '3307'
db_name = 'mydatabase'
db_user = 'myuser'
db_password = 'mypassword'

cnx = mysql.connector.connect(user=db_user, password=db_password,host=db_host, port=db_port,
database=db_name)


# Create a cursor object
cursor = db.cursor()

# SQL query to retrieve BLOB data
query = "SELECT foto FROM bicicletas WHERE id=1"

# Execute the query
cursor.execute(query)

# Fetch the BLOB data
blob_data = cursor.fetchone()[0]

# Write the BLOB data to a file
with open("imagen.jpeg", "wb") as f:
    f.write(blob_data)

# Close the database connection
db.close()