USE `clases-estudiantes`;
DROP procedure IF EXISTS `ConsulCreditosMateria`;

DELIMITER $$
USE `clases-estudiantes`$$
CREATE PROCEDURE `ConsulCreditosMateria` (in Id varchar(11))
BEGIN
	SELECT creditos FROM materia WHERE id_materia = Id;
END$$

DELIMITER ;
