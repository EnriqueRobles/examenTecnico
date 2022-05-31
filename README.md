# examenTecnico
Examen Técnico de YOK MAK

1.En el Programa Python:
Modificar y remplazar sus valores por las rutas a archivos en tu propio equipo y tener permisos de lectura:
	ruta_zip: Ubicacion del archivo a descomprimir
	ruta_extraccion: Ubicacion de los archivos descomprimidos

2.Instalar si no se tiene el conector de mysql para python 8.0.29.

3.Para hacer la conexion remplazar los valores que vienen por los valores del usuario:
	mydb = mysql.connector.connect(
  	host="localhost",
  	user="tu_usuario",
  	passwd="tu_contraseña",
  	database="tu_bbdd"
	)

4.Cargar el script sql de forma local donde ya se tienen definidas las tablas a ocupar llamado traveler.
	Ingresar con el usuario a ocupar al shell de mysql y crear la bd llamada traveler.
	Despues de salir del shell de mysql colocar "mysql -u username -p new_database < data-dump.sql"
	Donde: username es el nombre del usuario con acceso a la base de datos.
	       new_database es el nombre de la base de datos donde se realizará la importación.
               data-dump.sql es el nombre del archivo que contiene todas las instrucciones sql que se van a importar.

5.- En la insercion de datos de la tabla registro_serial_number, cambiar el id_resgitro_job por 2 y asi sucesivamente
cuando se cambie el archivo donde se esta leyendo, asi como en la insercion de datos de la tabla registro_job 
cambiar el id por el siguiente numero cuando se cambie de archivo.

