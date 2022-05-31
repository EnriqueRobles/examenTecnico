# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

"Desempaquetacion de Archivos en zip"
import mysql.connector
from zipfile import ZipFile
from xlrd import open_workbook

"Ubicacion del archivo .zip"
ruta_zip = "/Users/Keptos/Downloads/files.zip"

"Ruta de archivos descomprimidos"
ruta_extraccion = "/Users/Keptos/Desktop/"

password = None
archivo_zip = ZipFile(ruta_zip, "r")
try:
    print("Archivos descomprimidos")
    print(archivo_zip.namelist())
    archivo_zip.extractall(pwd=password, path=ruta_extraccion)
except:
    pass
archivo_zip.close()


"Ruta y Nombre del archivo que se esta leyendo"
"wb = open_workbook(ruta_extraccion+'/-8 2PP3BT.xls')"
"wb = open_workbook(ruta_extraccion+'/-5 6DPEA.xls')"
wb = open_workbook(ruta_extraccion+'/-3 2DPEA.xls')
sheet = wb.sheet_by_index(0)
sheet.cell_value(0, 0)

print("Valores")
"Lectura de valores en archivo excel"
panel_number=sheet.cell_value(2,3)
job_number=sheet.cell_value(3,3)
job_name=sheet.cell_value(4,3)
seal=sheet.cell_value(2,9)
type_1=sheet.cell_value(27,1)
modbus_id=sheet.cell_value(32,2)
    
print(panel_number,job_number,job_name,seal,type_1,modbus_id)

i=49
vacio=""
serial=" "
serial_numer=[]
meter_no=[]

while serial != vacio:
    serial=sheet.cell_value(i,2)
    serial_numer.append(serial)
    meter_no.append(sheet.cell_value(i, 1))
    i=i+1
print(serial_numer)
print(meter_no)


"Conexion a BD"
conexion1 = mysql.connector.connect(
    host="localhost", user="root", passwd="root", database="traveler")
cursor1 = conexion1.cursor()

"Insercion de datos tabla registro_job"
sql = "insert into registro_job(id,panel_numer, job_number,job_name,seal,type_1,modbus_id) values (%s,%s,%s,%s,%s,%s,%s)"
datos = (3,panel_number, job_number, job_name, seal, type_1, modbus_id)
cursor1.execute(sql, datos)
conexion1.commit()



"Insercion de datos tabla registro_serial_number"
sql = "insert into registro_serial_number(id_registro_job,serial_numer,meter_no) values (%s,%s,%s)"
for x in range(0, len(meter_no)-1):
    cursor1.execute(sql, (3, serial_numer[x], meter_no[x]))
conexion1.commit()

conexion1.close()

