USE `clases-estudiantes`;
DROP procedure IF EXISTS `ConsulMateriaProfesor`;

DELIMITER $$
USE `clases-estudiantes`$$
CREATE PROCEDURE `ConsulMateriaProfesor` ()
BEGIN
	SELECT mp.id_materia_profesor, CONCAT(m.nombre,' - ', p.nombre) as nombre
	FROM `materia_profesor` as mp
	INNER JOIN materia as m
	ON mp.id_materia = m.id_materia
	INNER JOIN profesor as p
	ON mp.id_profesor = p.id_profesor
	ORDER BY m.nombre ASC;
END$$

DELIMITER ;
