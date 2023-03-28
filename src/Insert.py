import mysql.connector

# Conexión a la base de datos MariaDB
db = mysql.connector.connect(
  host="172.17.0.2",
  user="root",
  password="root",
  database="bike_shop"
)


# Lectura del archivo de imagen en bytes
with open("blob/imagenes/imagen.jpeg", "rb") as f:
  imagen_bytes = f.read()

# Consulta SQL para insertar datos BLOB en la tabla
sql = "INSERT INTO bikes (name_bike, brand, year_bike, color, size_whell, price, image) VALUES (%s,%s,%s,%s,%s,%s,%s)"
val = ('Mountain Bike', 'Cannondale', '2020-01-01', 'black', '29', '499.99',imagen_bytes)

# Ejecución de la consulta SQL
cursor = db.cursor()
cursor.execute(sql, val)
db.commit()
print("Datos BLOB insertados correctamente")