CREATE DEFINER=`root`@`localhost` PROCEDURE `giorniDisp`(oraapp TIME, durataapp INT, macc INT UNSIGNED)
BEGIN 

	DECLARE tt INT DEFAULT 0;
    
    DROP TEMPORARY TABLE IF EXISTS Giorni;
    CREATE TEMPORARY TABLE Giorni(Giorno DATE PRIMARY KEY);
    
	WHILE
		tt <= 7
	DO
		INSERT INTO Giorni VALUES (DATE_ADD(NOW(), INTERVAL tt DAY));
        SET tt = tt + 1;
	END WHILE;
    
    SELECT Giorno
    FROM Giorni
    WHERE appDisp(Giorno, oraapp, durataapp, macc);
    
    
    DROP TEMPORARY TABLE Giorni;
    
END