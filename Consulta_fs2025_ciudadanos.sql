/* mostrar todos los datos de los ciudadanos que nacieron en mayo*/
SELECT
	*
FROM 
	ciudadanos
WHERE 
	MONTH(fechanac)=5;


/*mostrar dpi, nombre, apellido y email de las personas con nombre de juan sin importar si es primer o segundo nombre*/
SELECT 
	dpi,
	nombre,
	apellido,
	email
FROM
	ciudadanos
WHERE 
	nombre LIKE "%juan%";
	
/*Mostrar dpi, nombre completo (apellido y nombre) y telefono movil de los ciudadanos que tiene el codigo de municipio 101*/
SELECT
	dpi,
	CONCAT(apellido,", ", nombre)AS nombre_completo,
	tel_movil
FROM 
	ciudadanos 
WHERE 
	cod_muni=101;

/*obtener todos los ciudadanos que nacieron antes del año 2000 en el mes de octubre cuyo apellido inicia en h*/
SELECT 
	*
FROM
	ciudadanos 
WHERE 
	YEAR (fechanac)<2000
and
	MONTH (fechanac)=10
AND 
	apellido LIKE "h%";	
	
/*ver las regiones existentes*/
SELECT *
FROM 
	regiones;
	
/*Agregar una nueva región, los datos son los siguientes:
	*codigo = 10
	* nombre = Región X
	*descripcion = región de prueba
*/
INSERT INTO regiones (
	cod_region,
	nombre,
	descripcion)
VALUES (
	11, 
	"Región XI",
	"Región de prueba");
	
/*Cambiar la descripcion de la región 13 la cual debe ser, Región XIII*/
UPDATE regiones 
SET
	descripcion ="Región XIII"
WHERE 
	cod_region=9; /*9 es la llave primaria*/
	
/*Cambiar el telefono movil y telefono de casa del ciudadano con dpi 1007928191909
telefono movil = 44556677
telefono casa = 22334455*/
UPDATE 
	ciudadanos 
SET 
	tel_movil=44556677,
	tel_casa=22334455
WHERE 
	dpi=1007928191909;
	
/*ver el cambio del numero de telefono de 1007928191909*/
SELECT *
FROM 
	ciudadanos
WHERE 
	dpi=1234567890102;
	
/**/
	
/*agregar un nuevo ciudadano*/
INSERT INTO ciudadanos(
	dpi,
	apellido,
	nombre,
	direccion,
	tel_casa,
	tel_movil,
	email,
	fechanac,
	cod_nivel_acad,
	cod_muni,
	contra)
VALUES (
	1234567890102,
	"Inventado 2",
	"Soyel 2",
	"Zona 5",
	12345678,
	87654321,
	"inventado@mail.com",
	"2000/05/13",
	4,
	101,
	MD5("123456"));
	/*MD5 es un algoritmo para cifrar datos, hoy en día ya no es tan recomendable*/
	
/*Actualizar datos*/
UPDATE ciudadanos 
SET 
	nombre="Fulano",
	apellido="xd",
	fechanac="2000/06/21"
WHERE 
	dpi=1234567890102;
	
SELECT *
FROM 
	ciudadanos 
WHERE 
	dpi=1234567890102
	OR 
	dpi=1234567890101;
	
/*DELETE = Consulta de eliminación*/
DELETE 
FROM 
	ciudadanos 
WHERE 
	dpi=1234567890102
	OR 
	dpi=1234567890101;
	