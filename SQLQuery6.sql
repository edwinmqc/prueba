CREATE PROC prueba
AS
SELECT DB_NAME() AS ThisDB;

CREATE DATABASE TestData  
GO
USE TestData  
GO

CREATE TABLE dbo.prueba 
	(Nro_REQ varchar(25) PRIMARY KEY  NOT NULL,
		Nro_WO_INC varchar(25) NOT NULL,
		Estado varchar(25) NOT NULL,
		Direccion varchar(25) NOT NULL,
		Grupo_Resolutor varchar(25) NOT NULL,
		Problema varchar(25) NOT NULL,
		Fecha_Creacion varchar(25) NOT NULL,
		Fecha_Resolucion varchar(25) NOT NULL,
		Fecha_Cierre varchar(25) NOT NULL,
		Cant_Reinicidencias varchar(25) NOT NULL,
		Cant_Cierres varchar(25) NOT NULL,
		SLM_Status varchar(25) NOT NULL,
		Guia_de_Proceso varchar(25) NOT NULL,
		Fecha_Ejecucion varchar(25) NOT NULL)
 
GO

INSERT dbo.prueba (Nro_REQ,Nro_WO_INC,Estado,Direccion,Grupo_Resolutor,Problema,Fecha_Creacion,Fecha_Resolucion,Fecha_Cierre,Cant_Reinicidencias,Cant_Cierres,SLM_Status,Guia_de_Proceso,Fecha_Ejecucion)
    VALUES ('REQ000002413354',
	'WO0000000960925',
	'Terminado',
	'PERSONAS_Y_ADMINISTRACION',
	'APLICACIONES_DOCUMENTALES',
	'GESTION_DE_USUARIOS_C',
	'13/02/2021 14:03',
	'19/02/2021 18:20',
	'19/02/2021 18:20',
	0,
	1,
	'Dentro del objetivo',
	'',
	'08/11/2021 6:55'
)  
GO 

UPDATE dbo.prueba  
    SET Cant_Reinicidencias = 10  
    WHERE Nro_REQ = REQ000002413354  
GO
