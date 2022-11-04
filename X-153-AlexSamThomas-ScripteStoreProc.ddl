use db_formation;

DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `storedProcInsertGender`(IN `genderType` VARCHAR(100))
INSERT INTO t_gender (idGender, type) VALUES (UUID_TO_BIN(UUID()), genderType)$$
DELIMITER ;

CALL storedProcInsertGender("Gender test")