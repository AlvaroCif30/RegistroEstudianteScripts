USE `clases-estudiantes`;
DROP procedure IF EXISTS `RegistrosEstudiante`;

DELIMITER $$
USE `clases-estudiantes`$$
CREATE PROCEDURE `RegistrosEstudiante` ()
BEGIN
	SELECT * FROM estudiante;
END$$

DELIMITER ;
