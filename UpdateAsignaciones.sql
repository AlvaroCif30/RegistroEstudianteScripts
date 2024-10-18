USE `clases-estudiantes`;
DROP procedure IF EXISTS `UpdateAsignaciones`;

DELIMITER $$
USE `clases-estudiantes`$$
CREATE PROCEDURE `UpdateAsignaciones` (in Id varchar(11))
BEGIN
	UPDATE asignaciones SET active=0 WHERE id_estudiante=Id AND active=1;
END$$

DELIMITER ;
