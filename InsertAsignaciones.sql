USE `clases-estudiantes`;
DROP procedure IF EXISTS `InsertAsignaciones`;

DELIMITER $$
USE `clases-estudiantes`$$
CREATE PROCEDURE `InsertAsignaciones` (in Id varchar(11), in IdMateriaProfe int)
BEGIN
	INSERT INTO asignaciones
	(
		id_estudiante,
		id_materia_profesor,
		fecha_grabacion,
		active
	)
	VALUES(Id, IdMateriaProfe, now(), 1);
END$$

DELIMITER ;
