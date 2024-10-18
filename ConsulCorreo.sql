USE `clases-estudiantes`;
DROP procedure IF EXISTS `ConsulCorreo`;

DELIMITER $$
USE `clases-estudiantes`$$
CREATE PROCEDURE `ConsulCorreo` (in Email varchar(250))
BEGIN
	SELECT id_estudiante 
    FROM estudiante 
    WHERE correo_electronico=Email;
END$$

DELIMITER ;
