USE `clases-estudiantes`;
DROP procedure IF EXISTS `ConsulEstudiante`;

DELIMITER $$
USE `clases-estudiantes`$$
CREATE PROCEDURE `ConsulEstudiante` (in Email varchar(250), in Pass varchar(250))
BEGIN
	SELECT id_estudiante 
    FROM estudiante 
    WHERE correo_electronico=Email 
    AND contrasena=Pass;
END$$

DELIMITER ;
