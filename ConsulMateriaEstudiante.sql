USE `clases-estudiantes`;
DROP procedure IF EXISTS `ConsulMateriaEstudiante`;

DELIMITER $$
USE `clases-estudiantes`$$
CREATE PROCEDURE `ConsulMateriaEstudiante` (in Id varchar(11))
BEGIN
	SELECT mp.id_materia_profesor , CONCAT(m.nombre,' - ', p.nombre) as nombre 
    FROM asignaciones as a INNER JOIN materia_profesor as mp ON a.id_materia_profesor = mp.id_materia_profesor 
    INNER JOIN materia as m ON mp.id_materia = m.id_materia INNER JOIN profesor as p ON mp.id_profesor = p.id_profesor 
    WHERE a.id_estudiante=Id AND a.active=1;
END$$

DELIMITER ;
