CREATE DEFINER=`root`@`localhost` PROCEDURE `orariDisp`(dataa DATE, durataapp INT, macc INT UNSIGNED)
BEGIN

	DECLARE inizio TIME DEFAULT '09:00:00';
    
    DROP TEMPORARY TABLE IF EXISTS Ore;
    CREATE TEMPORARY TABLE Ore(Ora TIME PRIMARY KEY);
    
	WHILE
		inizio <= '17:00:00'
	DO
		INSERT INTO Ore VALUES (inizio);
        SET inizio = ADDTIME(inizio, '00:30:00');
    END WHILE;
    
    SELECT Ora 
    FROM Ore
    WHERE appDisp(dataa, Ora, durataapp, macc);
    
    DROP TEMPORARY TABLE Ore;
    
END