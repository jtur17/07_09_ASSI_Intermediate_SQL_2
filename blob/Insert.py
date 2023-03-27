import mysql.connector

# Conexión a la base de datos MariaDB
db = mysql.connector.connect(
  host="172.17.0.2",
  user="root",
  password="root",
  database="bikes_shop"
)

imagen = input("¿Que imagen quieres guardar? ")

# Lectura del archivo de imagen en bytes
with open("imagenes/imagen.jpeg", "rb") as f:
  imagen_bytes = f.read()

# Consulta SQL para insertar datos BLOB en la tabla
sql = "INSERT INTO bicicletas (id, nombre, foto) VALUES (%s, %s, %s)"
val = (2, "pepe", imagen_bytes)

# Ejecución de la consulta SQL
cursor = db.cursor()
cursor.execute(sql, val)
db.commit()
print("Datos BLOB insertados correctamente")