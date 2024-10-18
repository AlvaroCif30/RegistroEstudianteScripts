USE `clases-estudiantes`;
DROP procedure IF EXISTS `InsertarEstudiante`;

DELIMITER $$
USE `clases-estudiantes`$$
CREATE PROCEDURE `InsertarEstudiante` (in Nombre varchar(250), in Email varchar(250), in Pass varchar(250))
BEGIN
	INSERT INTO estudiante
	(
		nombre,
		correo_electronico,
		contrasena,
		fecha_grabacion
	)
	VALUES(Nombre, Email, Pass, now()); SELECT LAST_INSERT_ID();
END$$

DELIMITER ;
